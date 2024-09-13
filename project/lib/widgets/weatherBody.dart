import 'package:flutter/material.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  'There Is No Weather 😔 ',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                'Start Searching Now 🔍',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
