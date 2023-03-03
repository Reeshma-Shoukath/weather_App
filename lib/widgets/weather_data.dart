
import 'package:flutter/material.dart';

class CustomWeatherData extends StatelessWidget {
  const CustomWeatherData({
    super.key,
    required this.weatherData,
  });

  final String? weatherData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        weatherData ?? 'No Data',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
  }
}