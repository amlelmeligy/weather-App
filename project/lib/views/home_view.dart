import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/getWeatherCubits/get_weather_cubit.dart';
import 'package:project/cubits/getWeatherCubits/get_weather_states.dart';
import 'package:project/models/model.dart';
import 'package:project/views/search.dart';
import 'package:project/widgets/weatherBody.dart';
import 'package:project/widgets/weatherInformation.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 48, 58, 73),
        elevation: 0,
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const search();
                  },
                ),
              );
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      /////
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return WeatherBody();
          } else if (state is WeatherLoaded) {
            return WeatherInforamtion();
          } else {
            return Text("opps there was an error");
          }
        },
      ),
    );
  }
}
