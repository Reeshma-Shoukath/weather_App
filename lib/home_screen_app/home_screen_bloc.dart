import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/weather_model/weather_model.dart';
import 'package:weather_app/database/hive_helper.dart';
import 'package:weather_app/models/weather_model/weather_model.dart';
part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState.initial()) {
    on<Started>((event, emit) async {
      emit(HomeScreenState(
        searchResult: {},
        isLoading: true,
        isError: false,
        currentDay: '',
        weatherData: WeatherModel(),
      ));
      try {
        // fetching weather report from hive database
        final weatherReport = await DataBaseHelper().weatherDataHelper();

        if (weatherReport != null) {
          DateTime dateTime = DateTime.now();
          final currentDay = DateFormat.MMMMEEEEd().format(dateTime);
          emit(HomeScreenState(
            searchResult: {},
            currentDay: currentDay,
            isLoading: false,
            isError: false,
            weatherData: weatherReport,
          ));
        }
      } catch (e) {
        log(e.toString(), name: 'weather loading error');
        emit(HomeScreenState(
          searchResult: {},
          currentDay: '',
          isLoading: false,
          isError: true,
          weatherData: WeatherModel(),
        ));
      }
    });
    on<FetchData>((event, emit) async {
      emit(HomeScreenState(
        searchResult: {},
        isLoading: true,
        isError: false,
        currentDay: '',
        weatherData: WeatherModel(),
      ));
      try {
        DateTime dateTime = DateTime.now();
        final currentDay = DateFormat.MMMMEEEEd().format(dateTime);
        // fetching weather report from hive database
        final weatherReport = await DataBaseHelper().weatherDataHelper();
        final Map<String,dynamic> searchResult = {};

        if (weatherReport != null) {
          final searchQuery = event.querry;

          final searchData = weatherReport.current!.toJson();
          searchData.forEach(
            (key, value) {
              if (key.startsWith(searchQuery.toLowerCase())) {
                searchResult.addAll({
                  key:value
                });
              }
            },
          );
          emit(HomeScreenState(
            searchResult: searchResult,
            currentDay: currentDay,
            isLoading: false,
            isError: false,
            weatherData: weatherReport,
          ));
        }
      } catch (e) {
        log(e.toString(), name: 'weather loading error');
        emit(HomeScreenState(
          searchResult: {},
          currentDay: '',
          isLoading: false,
          isError: true,
          weatherData: WeatherModel(),
        ));
      }
    });
  }
}
