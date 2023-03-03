import 'package:weather_app/models/api_key.dart';
import 'package:weather_app/services/current_location.dart';

// url for fetching the ip address
const String fetchIpAddressUrl = 'https://api.ipify.org/?format=json';
class ApiEndPoints {
  late final String kLocation;
// method for fetching location url using ip address
  Future<String> fetchLocationUrl() async {
    final currentIpAddress = await CurrentLocation().fetchIpAdress();
    final ipAddress = currentIpAddress.ip;
    final locationUrl = 'https://ipinfo.io/$ipAddress/geo';
    return locationUrl;
  }
//method for fetching weather data url
  Future<String> fetchWeatherUrl() async {
    final location = await CurrentLocation().fetchLocation();
    final currentLocation = location.city;
    final String fetchWeatherApi =
        'http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$currentLocation&aqi=no';
    return fetchWeatherApi;
  }
}
