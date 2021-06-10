import 'package:aavu_admin/services/aavu.dart';
import 'package:aavu_admin/widgets/delete_dialog.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> cows = [];

class CowsScreen extends StatefulWidget {
  const CowsScreen({Key? key}) : super(key: key);

  @override
  _CowsScreenState createState() => _CowsScreenState();
}

class _CowsScreenState extends State<CowsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Table(
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
                Text("Cow"),
                Text("Breed"),
                Text("Milk Capacity"),
                Text("Age"),
                Text("update"),
                Text("delete")
              ]),
              ...cows.map((b) {
                var name = b["name"] as String?;
                final id = b["id"] as String;
                name = name ?? id;
                final breed = b["breed"] as String;
                final milk = b["milk"] as double?;
                final age = b["age"] as int?;
                return TableRow(decoration: BoxDecoration(), children: [
                  Text(name),
                  Text(breed),
                  Text(milk?.toString() ?? "unknown"),
                  Text(age?.toString() ?? "unknown"),
                  UpdateButton(
                    cow: b,
                  ),
                  DeleteButton(
                    id: id,
                    deleteCallback: (id) => CowServices.deleteCow(id),
                  )
                ]);
              })
            ],
          )
        ],
      ),
    );
  }
}

class AddCow extends StatefulWidget {
  const AddCow({Key? key}) : super(key: key);

  @override
  _AddCowState createState() => _AddCowState();
}

class _AddCowState extends State<AddCow> {
  String name = "";
  String energyPoint = "";
  String breedId = "";
  String age = "";
  String milk = "";
  String error = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(labelText: "Name"),
            onChanged: (value) {
              setState(() {
                name = value.trim();
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(labelText: "EnergyPoint ID"),
            onChanged: (value) {
              setState(() {
                energyPoint = value.trim();
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(labelText: "Breed Id"),
            onChanged: (value) {
              setState(() {
                breedId = value.trim();
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(labelText: "Age"),
            onChanged: (value) {
              setState(() {
                age = value.trim();
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(labelText: "Milk"),
            onChanged: (value) {
              setState(() {
                milk = value.trim();
              });
            },
          ),
        ),
        ElevatedButton(
            onPressed: () {
              addCow();
            },
            child: Text("Add Cow")),
        Text(error),
      ],
    );
  }

  void addCow() async {
    if (breedId.isEmpty) {
      setState(() {
        error = "breedID should not be empty";
      });
      return;
    }
    if (energyPoint.isEmpty) {
      setState(() {
        error = "Cow ID should not be empty";
      });
      return;
    }

    try {
      await CowServices.addCow(
          energyPointId: energyPoint,
          breedId: breedId,
          name: name.isEmpty ? null : name,
          age: int.tryParse(age),
          milk: double.tryParse(milk));
    } catch (e) {
      setState(() {
        error = "Error while adding cow $e";
      });
    }
  }
}

class UpdateButton extends StatelessWidget {
  final Map<String, dynamic> cow;

  const UpdateButton({Key? key, required this.cow}) : super(key: key);
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
          cow: cow,
        );
      },
    );
    print("Result $result");
  }
}

class UpdateDialog extends StatefulWidget {
  final Map<String, dynamic> cow;

  const UpdateDialog({Key? key, required this.cow}) : super(key: key);

  @override
  _UpdateDialogState createState() => _UpdateDialogState();
}

class _UpdateDialogState extends State<UpdateDialog> {
  late String name;
  String info = "";
  String images = "";
  String error = "";
  final infoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final b = widget.cow;
    info = b["info"] as String;
    infoController.text = info;
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
          "Cow Update Form",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          height: 10,
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
                  updateCow(context);
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

  void updateCow(BuildContext context) async {
    final b = widget.cow;
    final initialInfo = b["info"] as String;
    if (info != initialInfo) {
      if (info.isEmpty) {
        setState(() {
          error = "Info should not be empty";
        });
        return;
      }

      try {
        final patch = <String, dynamic>{};
        if (info != initialInfo) {
          patch["info"] = info;
        }

        await CowServices.updateCow(id: name, patch: patch);
        Navigator.pop(context, <String, dynamic>{...widget.cow, "info": info});
      } catch (e) {
        setState(() {
          error = "Error updating Cow $e";
        });
      }
    } else {
      Navigator.pop(
        context,
      );
    }
  }
}
