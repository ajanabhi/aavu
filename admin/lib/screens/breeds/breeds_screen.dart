import 'dart:convert';

import 'package:aavu_admin/services/aavu.dart';
import 'package:flutter/material.dart';

class BreedsScreen extends StatefulWidget {
  @override
  _BreedsScreenState createState() => _BreedsScreenState();
}

class _BreedsScreenState extends State<BreedsScreen> {
  final breeds = [
    {
      "name": "Gir",
      "info": "Gujaratsf ",
      "images": ["one", "two"]
    },
    {
      "name": "Ongole",
      "info": "Ongole",
      "images": ["one", "two"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 30),
      child: Table(
        columnWidths: {
          0: FixedColumnWidth(64),
          1: FlexColumnWidth(3),
          2: FlexColumnWidth(1),
          3: FixedColumnWidth(64),
          4: FixedColumnWidth(64),
        },
        children: [
          TableRow(children: [
            Text("Name"),
            Center(
              child: Text("Info"),
            ),
            Text("Images"),
            Text("update"),
            Text("delete")
          ]),
          ...breeds.map((b) {
            final name = b["name"] as String;
            final info = b["info"] as String;
            final images = jsonEncode(b["images"]);
            return TableRow(decoration: BoxDecoration(), children: [
              Text(name),
              Center(
                child: Text(
                  info,
                  style: TextStyle(),
                ),
              ),
              Text(images),
              UpdateButton(
                breed: b,
              ),
              DeleteButton(
                name: name,
              )
            ]);
          })
        ],
      ),
    );
  }

  void updateBreed(Map<String, dynamic> newBreed) {}
}

class UpdateButton extends StatelessWidget {
  final Map<String, dynamic> breed;

  const UpdateButton({Key? key, required this.breed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showUpdateDialog(context);
      },
      icon: Icon(Icons.update),
    );
  }

  void showUpdateDialog(BuildContext context) async {
    final dynamic result = await showDialog<dynamic>(
      context: context,
      builder: (context) {
        return UpdateDialog(
          breed: breed,
        );
      },
    );
    print("Result $result");
  }
}

class UpdateDialog extends StatefulWidget {
  final Map<String, dynamic> breed;

  const UpdateDialog({Key? key, required this.breed}) : super(key: key);

  @override
  _UpdateDialogState createState() => _UpdateDialogState();
}

class _UpdateDialogState extends State<UpdateDialog> {
  late String name;
  String info = "";
  String images = "";
  String error = "";
  final nameController = TextEditingController();
  final infoController = TextEditingController();
  final imagesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final b = widget.breed;
    name = b["name"] as String;
    info = b["info"] as String;
    images = jsonEncode(b["images"]);
    nameController.text = name;
    infoController.text = info;
    imagesController.text = images;
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(30),
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "Breed Update Form",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: nameController,
          enabled: false,
          decoration:
              InputDecoration(hintText: "Breed Name", labelText: "Breed Name"),
        ),
        TextField(
          controller: infoController,
          onChanged: (value) {
            setState(() {
              info = value.trim();
            });
          },
          decoration: InputDecoration(hintText: "Info", labelText: "Info"),
        ),
        TextField(
          controller: imagesController,
          onChanged: (value) {
            setState(() {
              images = value.trim();
            });
          },
          decoration: InputDecoration(hintText: "Images", labelText: "Images"),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel")),
            ElevatedButton(
                onPressed: () {
                  updateBreed(context);
                },
                child: Text("Update")),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          error,
          style: TextStyle(color: Colors.red),
        )
      ],
    );
  }

  void updateBreed(BuildContext context) async {
    final b = widget.breed;
    final initialInfo = b["info"] as String;
    final initialImages = jsonEncode(b["images"]);
    if (info != initialInfo || images != initialImages) {
      if (info.isEmpty) {
        setState(() {
          error = "Info should not be empty";
        });
        return;
      }
      if (images.isEmpty) {
        setState(() {
          error = "Images should not be empty";
        });
        return;
      }

      try {
        final patch = <String, dynamic>{};
        if (info != initialInfo) {
          patch["info"] = info;
        }
        if (images != initialImages) {
          patch["images"] = jsonDecode(images);
        }
        await BreedServices.updateBreed(name: name, patch: patch);
        Navigator.pop(context, <String, dynamic>{
          "name": name,
          "images": jsonDecode(images),
          "info": info
        });
      } catch (e) {
        setState(() {
          error = "Error updating breed $e";
        });
      }
    } else {
      Navigator.pop(
        context,
      );
    }
  }
}

class DeleteButton extends StatelessWidget {
  final String name;

  const DeleteButton({Key? key, required this.name}) : super(key: key);
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
        return _DeleteDialog(name: name);
      },
    );
    print("Result $result");
  }
}

class _DeleteDialog extends StatefulWidget {
  final String name;

  const _DeleteDialog({Key? key, required this.name}) : super(key: key);
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
        Text("Are you sure to delete breed ${widget.name} ?"),
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
                    deleteBreed(context);
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

  void deleteBreed(BuildContext context) async {
    try {
      await BreedServices.deleteBreed(widget.name);
    } catch (e) {
      setState(() {
        error = "$e";
      });
    }
  }
}
