import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/getWeatherCubits/get_weather_states.dart';
import 'package:project/views/home_view.dart';

import 'cubits/getWeatherCubits/get_weather_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => MaterialApp(
          // theme: ThemeData(
          //   primarySwatch: getThemecolor(
          //     BlocProvider.of<GetWeatherCubit>(context)
          //         .weather!
          //         .weatherCondition,
          //   ),
          // ),
          debugShowCheckedModeBanner: false,
          home: HomeView(),
        ),
      ),
    );
  }
}

// MaterialColor getThemecolor(String condition) {
//   // if (condition == null) {
//   //   return Colors.blue;
//   // }
//   switch (condition.toLowerCase()) {
//     case "sunny":
//     case "clear":
//       return Colors.amber;
//     case "partly cloudy":
//       return Colors.yellow;
//     case "cloudy":
//     case "overcast":
//       return Colors.grey;
//     case "mist":
//       return Colors.blueGrey;
//     case "patchy rain possible":
//     case "patchy light drizzle":
//     case "light drizzle":
//     case "patchy light rain":
//     case "light rain":
//     case "moderate rain at times":
//     case "moderate rain":
//     case "heavy rain at times":
//     case "heavy rain":
//     case "light freezing rain":
//     case "moderate or heavy freezing rain":
//       return Colors.blue;
//     case "patchy snow possible":
//     case "patchy light snow":
//     case "light snow":
//     case "patchy moderate snow":
//     case "moderate snow":
//     case "patchy heavy snow":
//     case "heavy snow":
//       return Colors.blueGrey;
//     case "patchy sleet possible":
//     case "patchy light sleet":
//     case "light sleet":
//     case "moderate or heavy sleet":
//       return Colors.cyan;
//     case "thundery outbreaks possible":
//     case "patchy light rain with thunder":
//     case "moderate or heavy rain with thunder":
//     case "patchy light snow with thunder":
//     case "moderate or heavy snow with thunder":
//       return Colors.deepPurple;
//     case "blowing snow":
//     case "blizzard":
//       return Colors.indigo;
//     case "fog":
//     case "freezing fog":
//       return Colors.grey;
//     default:
//       return Colors.grey;
//   }
// }
