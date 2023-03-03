import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/home_screen_app/home_screen_bloc.dart';
import 'package:weather_app/widgets/appbar.dart';
import 'package:weather_app/widgets/weather_data.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) {
          final weatherData = state.weatherData.current;
          final location = state.weatherData.location;
          if (state.isError == false) {
            return Stack(
              children: [
                Image.asset(
                  'assets/background/image_6483441.JPG',
                  fit: BoxFit.fill,
                  height: 100.h,
                  width: 100.w,
                ),
                Column(
                  children: [
                    SizedBox(height: 8.h),
                    const CustomAppBar(),
                    SizedBox(height: 6.h),
                    Center(
                      child: Text(
                        location?.name.toString() ?? 'Unknown',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Center(
                      child: Text(
                        state.currentDay,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Center(
                      child: Text(
                        '${weatherData?.tempC ?? '0'}°c',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -5,
                        ),
                      ),
                    ),
                    SizedBox(height: 2,),
                    // const Center(
                    //   child: Text(
                    //     '',
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 40,
                    //     ),
                    //   ),
                    // ),
                    CustomWeatherData(
                        weatherData: weatherData?.condition?.text ?? 'No Data'),
                    SizedBox(height: 2.h),
                    CustomWeatherData(
                        weatherData:
                            '${weatherData?.tempC ?? '0'}°c/${weatherData?.tempF ?? '0'}°f')
                  ],
                ),
              ],
            );
          } else {
            return const Center(
              child: Text('Something went wrong'),
            );
          }
        },
      ),
    );
  }
}
