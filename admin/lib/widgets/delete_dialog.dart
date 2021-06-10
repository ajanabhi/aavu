import 'package:flutter/material.dart';

typedef DeleteCallbackFn = Future<void> Function(String id);

class DeleteButton extends StatelessWidget {
  final String id;

  final DeleteCallbackFn deleteCallback;

  const DeleteButton({Key? key, required this.id, required this.deleteCallback})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          showDeleteDialog(context);
        });
  }

  void showDeleteDialog(BuildContext context) async {
    final dynamic result = await showDialog<dynamic>(
      context: context,
      builder: (context) {
        return _DeleteDialog(
          id: id,
          deleteCallback: deleteCallback,
        );
      },
    );
    print("Result $result");
  }
}

class _DeleteDialog extends StatefulWidget {
  final String id;
  final DeleteCallbackFn deleteCallback;

  const _DeleteDialog(
      {Key? key, required this.id, required this.deleteCallback})
      : super(key: key);
  @override
  __DeleteDialogState createState() => __DeleteDialogState();
}

class __DeleteDialogState extends State<_DeleteDialog> {
  String error = "";
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            "Delete Breed Form",
            textAlign: TextAlign.center,
          ),
        ),
        Text("Are you sure to delete breed ${widget.id} ?"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {
                    deleteEnergyPoint(context);
                  },
                  child: Text("Yes"))
            ],
          ),
        ),
        Text(
          error,
          style: TextStyle(color: Colors.red),
        )
      ],
    );
  }

  void deleteEnergyPoint(BuildContext context) async {
    try {
      await widget.deleteCallback(widget.id);
    } catch (e) {
      setState(() {
        error = "$e";
      });
    }
  }
}
