import 'package:dio/dio.dart';

abstract class AavuServices {
  static const url = "http://localhost:8080/graphql";
  static final Options _defaultOptions =
      Options(contentType: "application/json", responseType: ResponseType.json);
  static Future<void> updateBreed(
      {required String name, required Map<String, dynamic> patch}) async {
    try {
      final dio = Dio();
      final data = {
        "query": """
  mutation upb(\$name: String!, \$patch: BreedPatch!) {
  updateBreed( input:{ filter: {name:{eq:\$name}},set:\$patch}) {
    breed {
      name
    }
  }
}
  """,
        "variables": {"name": name, "patch": patch}
      };
      final resp = await dio.post<Map<String, dynamic>>(url,
          data: data, options: _defaultOptions);
      if (resp.data != null && resp.data!["data"] != null) {
      } else {
        throw Exception("$name ${resp.data} , ");
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> deleteBreed(String name) async {
    try {
      final data = {
        "query": """
       mutation db(\$name: String!) {
  deleteBreed(filter:{name:{eq:\$name}}) {
    breed {
      name
    }
  }
}
      """,
        "variables": {"name": name}
      };
      final dio = Dio();
      final resp = await dio.post<Map<String, dynamic>>(url,
          data: data, options: _defaultOptions);
      if (resp.data != null && resp.data!["data"] != null) {
      } else {
        throw Exception("$name ${resp.data} , ");
      }
    } catch (e) {
      rethrow;
    }
  }
}
