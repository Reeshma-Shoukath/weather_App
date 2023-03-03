import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model/weather_model.dart';
import 'package:weather_app/services/api_end_points.dart';

// fetching weather details
class WeatherRepository {
  Future<WeatherModel> fetchWeather() async {
    final weatherApiUrl = await ApiEndPoints().fetchWeatherUrl();
    try {
      final response = await http.get(Uri.parse(weatherApiUrl));
      if (response.statusCode == 200) {
        final data = response.body;
        log(data.toString(), name: 'weather');
        return weatherModelFromJson(data);
      } else {
        throw Exception('failed to load weather data');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
