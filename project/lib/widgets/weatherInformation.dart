import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/getWeatherCubits/get_weather_cubit.dart';
import 'package:project/models/model.dart';
import 'package:project/services/services.dart';
import 'package:project/views/search.dart';

class WeatherInforamtion extends StatelessWidget {
  const WeatherInforamtion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Weather weather = BlocProvider.of<GetWeatherCubit>(context).weather!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 48, 58, 73),
            const Color.fromARGB(255, 124, 122, 122),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 60),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Text(
                weather.cityName!,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Update: ${weather.date?.hour}:${weather.date?.minute}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              child: Image.network(
                "https:${weather.image}",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              weather.temp.toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "MaxTemp: ${weather.maxtemp!.round()}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "MinTemp: ${weather.mintemp!.round()}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              weather.weatherCondition!,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
