import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/classWeather.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key, required this.weatherModel}) : super(key: key);
 final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     
      body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${weatherModel.cityName}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    'updated at ${weatherModel.lastData}',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                        "https:${weatherModel.Image}",
                        height: 100,
                      ),
                      Text(
                        '${weatherModel.temp}°C',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Maxtemp:${weatherModel.maxtemp}°C',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Mintemp:${weatherModel.Mintemp}°C',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    '${weatherModel.weathercondition}',
                    style: TextStyle(
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