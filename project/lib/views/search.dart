import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubits/getWeatherCubits/get_weather_cubit.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search a City',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextFormField(
                onFieldSubmitted: (value) async {
                  var getweathercubit =
                      BlocProvider.of<GetWeatherCubit>(context);
                  await getweathercubit.getWeather(cityName: value);
                  Navigator.pop(context);
                },
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a city name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  labelText: 'Search',
                  hintText: "Enter City Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
