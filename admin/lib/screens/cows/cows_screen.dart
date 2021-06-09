import 'package:aavu_admin/services/aavu.dart';
import 'package:flutter/material.dart';

class CowsScreen extends StatefulWidget {
  const CowsScreen({Key? key}) : super(key: key);

  @override
  _CowsScreenState createState() => _CowsScreenState();
}

class _CowsScreenState extends State<CowsScreen> {
  String name = "";
  String energyPointId = "";
  String breedId = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                  energyPointId = value.trim();
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(labelText: "Bred Id"),
              onChanged: (value) {
                setState(() {
                  breedId = value.trim();
                });
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                addCow();
              },
              child: Text("Add Cow")),
          Text(error)
        ],
      ),
    );
  }

  void addCow() async {
    if (breedId.isEmpty) {
      setState(() {
        error = "breedID should not be empty";
      });
      return;
    }
    if (energyPointId.isEmpty) {
      setState(() {
        error = "energyPoint ID should not be empty";
      });
      return;
    }

    try {
      await CowServices.addCow(
          energyPointId: energyPointId,
          breedId: breedId,
          name: name.isEmpty ? null : name);
    } catch (e) {
      setState(() {
        error = "Error while adding cow $e";
      });
    }
  }
}
