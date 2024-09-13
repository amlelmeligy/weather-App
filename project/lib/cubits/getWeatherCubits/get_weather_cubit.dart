import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/getWeatherCubits/get_weather_states.dart';
import 'package:project/models/model.dart';
import 'package:project/services/services.dart';
import 'package:project/views/search.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  Weather? weather;
  getWeather({required String cityName}) async {
    try {
      weather = await WeatherService().getCurrentWeather(cityName: cityName);
      emit(WeatherLoaded(weather!));
    } catch (e) {
      emit(WeatherFailed(
        errorMessage: e.toString(),
      ));
    }
  }
}
