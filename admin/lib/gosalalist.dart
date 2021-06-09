import 'package:dio/dio.dart';

class EnergyPoint {
  final double latitude;
  final double longitude;
  final String address;
  final String url;
  final String? place_id;
  final String info;
  final Map<String, dynamic> extra;

  EnergyPoint(
      {required this.latitude,
      required this.longitude,
      required this.address,
      required this.url,
      this.place_id,
      required this.info,
      required this.extra});

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}

// API key : AIzaSyAgiMZMCBYsBvhEFxe1Nrtx47MEX8Pgjck

abstract class CrentialsKey {
  static const API_KEY = "AIzaSyAgiMZMCBYsBvhEFxe1Nrtx47MEX8Pgjck";
}

// Places search API : https://www.google.com/search?rlz=1C5CHFA_enIN918IN918&tbs=lf:1,lf_ui:1&tbm=lcl&sxsrf=ALeKk02vI0nbXdTuItxgEwm4pLgCTSX87g:1623221402836&q=goshala+near+me&rflfq=1&num=10&sa=X&ved=2ahUKEwi57-34-onxAhUdyjgGHYBqDgoQjGp6BAgFEEI&biw=1361&bih=764#rlfi=hd:;si:;mv:[[16.6633346,80.7878456],[16.244593,80.2361343]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:1

// Docs - https://developers.google.com/maps/documentation/geocoding/overview#ReverseGeocoding
// API - https://maps.googleapis.com/maps/api/geocode/json?latlng=40.714224,-73.961452&key=YOUR_API_KEY

final gosala_list = <EnergyPoint>{
  EnergyPoint(
      latitude: 16.84655252940305,
      longitude: 80.12931197132839,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.5137301,80.183557,10z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35a7a436fb01ef:0x8eb452eac0a3e61b!2m2!1d80.1286527!2d16.8210968?hl=en"
      }),
  EnergyPoint(
      latitude: 16.49588986570716,
      longitude: 80.65984242223406,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.567347997248536,
      longitude: 80.72644704031381,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.567347997248536,
      longitude: 80.72644704031381,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.47482045541026,
      longitude: 80.68387501577091,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.32720878326027,
      longitude: 80.38500920459133,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.29474878863179,
      longitude: 80.26375926761365,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.42943496707681,
      longitude: 80.45904455676813,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.216999254451856,
      longitude: 81.13879553875128,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.861209419486183,
      longitude: 81.42824953379412,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.4543500250503,
      longitude: 80.74182908279275,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 17.006135144795866,
      longitude: 82.00567229500636,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.530108065914526,
      longitude: 80.63306324711368,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.214361938932186,
      longitude: 81.13742224769203,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
  EnergyPoint(
      latitude: 16.555297428363243,
      longitude: 80.53213511873952,
      address: "",
      url: "",
      info: "",
      extra: <String, dynamic>{
        "google place url ":
            "https://www.google.com/maps/dir/16.1812399,80.7961248/goshala+near+me/@16.3411081,80.5695485,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a35fbe7e7526d07:0x847a56447b5cd8e1!2m2!1d80.6603402!2d16.4838083"
      }),
};

// 16.49588986570716, 80.65984242223406
abstract class GosalaPlacesAPI {
  static Future<EnergyPoint> getGoshalaDetails(double lat, double long) async {
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

        return EnergyPoint(
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
}
