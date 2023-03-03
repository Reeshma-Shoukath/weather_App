part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required bool isLoading,
    required bool isError,
    required String currentDay,
    required Map<String,dynamic> searchResult,
    required WeatherModel weatherData,
  }) = _HomeScreenState;

  factory HomeScreenState.initial() => HomeScreenState(
        isError: false,
        isLoading: false,
        searchResult: {},
        currentDay: '',
        weatherData: WeatherModel(),
      );
}
