import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:weather_app/widgets/air_humidity.dart';

class MainWeather extends StatefulWidget {
  IconData? weatherIcon;
  String? message;
  int? temp;
  double? speed;
  int? humidity;

  MainWeather(
      {required this.weatherIcon,
      required this.message,
      required this.temp,
      required this.humidity,
      required this.speed});
  @override
  _MainWeatherState createState() => _MainWeatherState();
}

class _MainWeatherState extends State<MainWeather> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: Container(
            color: Colors.transparent,
            alignment: Alignment.center,
            height: 180.0,
            child: Icon(
              widget.weatherIcon,
              size: 180.0,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
          child: Text(
            '${widget.message}',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Text(
            '${widget.temp}°',
            style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.w900),
          ),
        ),
        AirHumidity(humid: widget.humidity, speed: widget.speed),
      ],
    );
  }
}