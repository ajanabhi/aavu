import 'dart:convert';

import 'package:aavu_admin/services/aavu.dart';
import 'package:flutter/material.dart';

class EnergyPointScreen extends StatefulWidget {
  static const routeName = "EnergyPoint";
  const EnergyPointScreen({Key? key}) : super(key: key);

  @override
  _EnergyPointScreenState createState() => _EnergyPointScreenState();
}

final List<Map<String, dynamic>> EnergyPoints = [];

class _EnergyPointScreenState extends State<EnergyPointScreen> {
  String latLongStr = "";

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          AddEnergyPoint(),
          Expanded(
              child: Padding(
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
                        Text("Address"),
                        Text("Cows Count"),
                        Text("update"),
                        Text("delete")
                      ]),
                      ...EnergyPoints.map((b) {
                        var name = b["name"] as String?;
                        final id = b["id"] as String;
                        name = name ?? id;
                        final address = b["address"] as String;
                        final cows = b["cows_count"] as int?;
                        return TableRow(decoration: BoxDecoration(), children: [
                          Text(name),
                          Text(address),
                          Text(cows?.toString() ?? "0"),
                          UpdateButton(
                            breed: b,
                          ),
                          DeleteButton(
                            id: id,
                          )
                        ]);
                      })
                    ],
                  )))
        ],
      ),
    ));
  }
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
          EnergyPoint: breed,
        );
      },
    );
    print("Result $result");
  }
}

class UpdateDialog extends StatefulWidget {
  final Map<String, dynamic> EnergyPoint;

  const UpdateDialog({Key? key, required this.EnergyPoint}) : super(key: key);

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
    final b = widget.EnergyPoint;
    info = b["info"] as String;
    images = jsonEncode(b["images"]);
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
          "EnergyPoint Update Form",
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
                  updateEnergyPoint(context);
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

  void updateEnergyPoint(BuildContext context) async {
    final b = widget.EnergyPoint;
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

        await EnergyPointServices.updateEnergyPoint(id: name, patch: patch);
        Navigator.pop(
            context, <String, dynamic>{...widget.EnergyPoint, "info": info});
      } catch (e) {
        setState(() {
          error = "Error updating EnergyPoint $e";
        });
      }
    } else {
      Navigator.pop(
        context,
      );
    }
  }
}

class AddCow extends StatefulWidget {
  const AddCow({Key? key}) : super(key: key);

  @override
  _AddCowState createState() => _AddCowState();
}

class _AddCowState extends State<AddCow> {
  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class AddEnergyPoint extends StatefulWidget {
  const AddEnergyPoint({Key? key}) : super(key: key);

  @override
  _AddEnergyPointState createState() => _AddEnergyPointState();
}

class _AddEnergyPointState extends State<AddEnergyPoint> {
  String latLng = "";
  String name = "";
  String year = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(labelText: "LatLong coma(,) separated"),
            onChanged: (value) {
              latLng = value.trim();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(labelText: "Name of the EnergyPoint"),
            onChanged: (value) {
              name = value.trim();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(labelText: "Year Established"),
            onChanged: (value) {
              year = value.trim();
            },
          ),
        ),
        ElevatedButton(
            onPressed: () {
              addEnergyPoint();
            },
            child: Text("Add EnergyPoint")),
        Text(error)
      ],
    );
  }

  void addEnergyPoint() async {
    if (latLng.isEmpty) {
      setState(() {
        error = "LatLng shouldnt be empty";
      });
    }
    final lla = latLng.split(",");
    final latitide = double.parse(lla.first);
    final longtidue = double.parse(lla.last);
    try {
      await EnergyPointServices.addEnergyPoint(
          latitude: latitide,
          longitude: longtidue,
          name: name.isEmpty ? null : name,
          year: int.tryParse(year));
    } catch (e) {
      setState(() {
        error = "Error while adding EnergyPoint $e";
      });
    }
  }
}

class DeleteButton extends StatelessWidget {
  final String id;

  const DeleteButton({Key? key, required this.id}) : super(key: key);
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
        return _DeleteDialog(id: id);
      },
    );
    print("Result $result");
  }
}

class _DeleteDialog extends StatefulWidget {
  final String id;

  const _DeleteDialog({Key? key, required this.id}) : super(key: key);
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
      await EnergyPointServices.deleteEnergyPoint(widget.id);
    } catch (e) {
      setState(() {
        error = "$e";
      });
    }
  }
}
