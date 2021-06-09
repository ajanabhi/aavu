import 'package:aavu_admin/gosalalist.dart';
import 'package:dio/dio.dart';

const api_url = "http://localhost:8080/graphql";
final dio = Dio();
final Options _defaultOptions =
    Options(contentType: "application/json", responseType: ResponseType.json);

abstract class BreedServices {
  static Future<void> updateBreed(
      {required String name, required Map<String, dynamic> patch}) async {
    try {
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
      final resp = await dio.post<Map<String, dynamic>>(api_url,
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
      final resp = await dio.post<Map<String, dynamic>>(api_url,
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

abstract class GosalaServices {
  static Future<GoShalaa> getGoshalaDetails(double lat, double long) async {
    try {
      final url =
          "https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$long&key=AIzaSyAgiMZMCBYsBvhEFxe1Nrtx47MEX8Pgjck";
      final dio = Dio();
      final resp = await dio.get<Map<String, dynamic>>(url,
          options: Options(responseType: ResponseType.json));
      if (resp.data != null) {
        final results = resp.data as List<dynamic>;
        final map = results.first as Map<String, dynamic>;
        final address = map["formatted_address"] as String;
        final place_id = map["place_id"] as String;
        final address_components = map["address_components"] as List<dynamic>;
        final geometry = map["geometry"] as Map<String, dynamic>;

        return GoShalaa(
            latitude: lat,
            longitude: long,
            address: address,
            url: url,
            place_id: place_id,
            info: "",
            extra: <String, dynamic>{
              "address_components": address_components,
              "geometry": geometry
            });
      } else {
        throw Exception(
            "Error calling api ${resp.data}  statuscode : ${resp.statusCode}");
      }
    } catch (e) {
      print("Error in getting goshala details $e");
      rethrow;
    }
  }

  static Future<dynamic> addGoshala(
      {required double latitude,
      required double longitude,
      int? year,
      String? name}) async {
    try {
      final tempGS = await getGoshalaDetails(latitude, longitude);

      final query = """
      mutation ag(\$input: [AddEnergyPointInput!]!) {
        addEnergyPoint(input:\$input) {
           id
        }
      }
    """;

      final variables = <String, dynamic>{
        "place_id": tempGS.place_id,
        "address": tempGS.address,
        "info": tempGS.info,
        "name": name,
        "point": {"latitude": latitude, "longitude": longitude}
      };

      final mq = {"query": query, "variables": variables};

      final dio = Dio();

      final resp = await dio.post<Map<String, dynamic>>(api_url,
          data: mq, options: _defaultOptions);
      processResponse(resp);
    } catch (e) {
      rethrow;
    }
  }

  static dynamic processResponse(Response<Map<String, dynamic>> resp) {
    if (resp.data != null) {
      final data = resp.data!;
      if (data["data"] != null) {
        return data["data"]!;
      } else {
        throw Exception("Error in creating goshala ${data["errors"]}");
      }
    } else {
      throw Exception(
          "Error in creating goshala ${resp.data} status : ${resp.statusCode}");
    }
  }

  static Future<dynamic> updateGoshala(
      {required String id, required Map<String, dynamic> patch}) async {
    try {
      final data = {
        "query": """
  mutation upb(\$id: String!, \$patch: EnergyPointPatch!) {
  updateEnergyPoint( input:{ filter: {id:{eq:\$id}},set:\$patch}) {
    breed {
      name
    }
  }
}
  """,
        "variables": {"id": id, "patch": patch}
      };

      final resp = await dio.post<Map<String, dynamic>>(api_url,
          data: data, options: _defaultOptions);
      processResponse(resp);
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> deleteGoshala(String id) async {
    try {
      final data = {
        "query": """
       mutation db(\$id: String!) {
  deleteEnergyPoint(filter:{id:{eq:\$name}}) {
    breed {
      name
    }
  }
}
      """,
        "variables": {"id": id}
      };

      final resp = await dio.post<Map<String, dynamic>>(api_url,
          data: data, options: _defaultOptions);
      processResponse(resp);
    } catch (e) {
      rethrow;
    }
  }
}
