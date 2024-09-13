import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:project/models/model.dart';

class WeatherService {
  final Dio dio = Dio();
  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apikey = "67f5456097ed42c7bed45050240108";
  WeatherService(); // Constructor
  Future<Weather> getCurrentWeather({
    required String cityName,
  }) async {
    try {
      Response response = await dio
          .get("$baseUrl/forecast.json?key=$apikey&q=$cityName&days=1");
      Weather weather = Weather.formJson(response.data);

      return weather;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data["error"]["message"] ??
          "oops there was an error , try later";
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("oops there was an error , try later");
    }
  }
}
