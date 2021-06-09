import 'dart:convert';

import 'package:aavu_admin/services/aavu.dart';
import 'package:flutter/material.dart';

class GosalaScreen extends StatefulWidget {
  static const routeName = "gosala";
  const GosalaScreen({Key? key}) : super(key: key);

  @override
  _GosalaScreenState createState() => _GosalaScreenState();
}

final List<Map<String, dynamic>> gosalas = [];

class _GosalaScreenState extends State<GosalaScreen> {
  String latLongStr = "";

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          AddGoshala(),
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
                      ...gosalas.map((b) {
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
          gosala: breed,
        );
      },
    );
    print("Result $result");
  }
}

class UpdateDialog extends StatefulWidget {
  final Map<String, dynamic> gosala;

  const UpdateDialog({Key? key, required this.gosala}) : super(key: key);

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
    final b = widget.gosala;
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
          "Gosala Update Form",
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
                  updateGoshala(context);
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

  void updateGoshala(BuildContext context) async {
    final b = widget.gosala;
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

        await GosalaServices.updateGoshala(id: name, patch: patch);
        Navigator.pop(
            context, <String, dynamic>{...widget.gosala, "info": info});
      } catch (e) {
        setState(() {
          error = "Error updating Gosala $e";
        });
      }
    } else {
      Navigator.pop(
        context,
      );
    }
  }
}

class AddGoshala extends StatefulWidget {
  const AddGoshala({Key? key}) : super(key: key);

  @override
  _AddGoshalaState createState() => _AddGoshalaState();
}

class _AddGoshalaState extends State<AddGoshala> {
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
            decoration: InputDecoration(labelText: "Name of the Goshala"),
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
              addGoshala();
            },
            child: Text("Add Goshala")),
        Text(error)
      ],
    );
  }

  void addGoshala() async {
    if (latLng.isEmpty) {
      setState(() {
        error = "LatLng shouldnt be empty";
      });
    }
    final lla = latLng.split(",");
    final latitide = double.parse(lla.first);
    final longtidue = double.parse(lla.last);
    try {
      await GosalaServices.addGoshala(
          latitude: latitide,
          longitude: longtidue,
          name: name.isEmpty ? null : name,
          year: int.tryParse(year));
    } catch (e) {
      setState(() {
        error = "Error while adding goshala $e";
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
                    deleteGoshala(context);
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

  void deleteGoshala(BuildContext context) async {
    try {
      await GosalaServices.deleteGoshala(widget.id);
    } catch (e) {
      setState(() {
        error = "$e";
      });
    }
  }
}
