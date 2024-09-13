import 'package:project/models/model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Weather weather;

  WeatherLoaded(this.weather);
}

class WeatherFailed extends WeatherState {
  final String errorMessage;

  WeatherFailed({required this.errorMessage});
}
