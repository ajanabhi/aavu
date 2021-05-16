import 'dart:convert';

import 'package:flutter/material.dart';
import "package:dio/dio.dart";

class UploadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [UploadBreeds()],
    );
  }
}

class UploadBreeds extends StatefulWidget {
  @override
  _UploadBreedsState createState() => _UploadBreedsState();
}

class _UploadBreedsState extends State<UploadBreeds> {
  String input = "";
  String result = "";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          Expanded(
              child: TextField(
            expands: true,
            maxLines: null,
            minLines: null,
            decoration: InputDecoration(hintText: "Enter Json Here"),
            onChanged: (value) {
              setState(() {
                input = value;
                result = "";
              });
            },
          )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                print("hello");
                uploadBreeds();
              },
              child: Text("Upload")),
          SizedBox(
            height: 20,
          ),
          Text(
            result,
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 24),
          )
        ],
      ),
    );
  }

  void uploadBreeds() async {
    try {
      print("uploading $input");
      setState(() {
        result = "Uploading breeds";
      });
      final map = jsonDecode(input) as Map<String, dynamic>;
      final array = <Map<String, dynamic>>[];
      map.forEach((key, dynamic value) {
        value = value as Map<String, dynamic>;
        final breed = <String, dynamic>{};
        breed["name"] = key;
        breed["info"] = value["info"];
        breed["images"] = value["images"];
        array.add(breed);
      });
      final dio = Dio();
      final query = {
        "query": """
      mutation mu(\$input:[AddBreedInput!]!) {
  addBreed(input:\$input) {
    breed {
      name
    }
  }
}  """,
        "variables": {"input": array}
      };
      final resp = await dio.post<Map<String, dynamic>>(
          "http://localhost:8080/graphql",
          data: query,
          options: Options(
              contentType: "application/json",
              responseType: ResponseType.json));
      print("Response ${resp.data}");
      if (resp.data != null && resp.data!["data"] != null) {
        setState(() {
          result = "done";
        });
      } else {
        throw Exception("Error uploading breeds ${resp.data!["errors"]}");
      }
    } catch (e) {
      setState(() {
        result = "$e";
      });
    }
  }
}
