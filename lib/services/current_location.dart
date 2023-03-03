import 'package:http/http.dart' as http;
import 'package:weather_app/models/ip_model.dart';
import 'package:weather_app/models/location_model.dart';
import 'package:weather_app/services/api_end_points.dart';

class CurrentLocation {

  //method for fetching user ip address
  Future<IpModel> fetchIpAdress() async {
    try {
      final response = await http.get(Uri.parse(fetchIpAddressUrl));

      if (response.statusCode == 200) {
        final data = response.body;
        return ipModelFromJson(data);
      } else {
        throw Exception('failed to ip address');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
//method for fetching user location using the ip address
  Future<LocationModel> fetchLocation() async {
    final locationUrl = await ApiEndPoints().fetchLocationUrl();
    try {
      final response = await http.get(Uri.parse(locationUrl));

      if (response.statusCode == 200) {
        final data = response.body;
        return locationModelFromJson(data);
      } else {
        throw Exception('failed to ip address');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
