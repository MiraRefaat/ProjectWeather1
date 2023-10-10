import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/classWeather.dart';

class WeatherService{
  late WeatherModel weatherModle1;
  Dio dio = Dio();
  String baseurl = "http://api.weatherapi.com/v1";
  String Apikey = "ebde3f6ba6e94f52bf2104645232009";
  String city = "Cairo";
  bool isLoading = true;
  

 Future<WeatherModel> getWatherdata({required String city}) async {
  final response  = await dio.get(
        "$baseurl/forecast.json?key=$Apikey &q=$city &days=1&aqi=no&alerts=no");
    weatherModle1 = WeatherModel.fromJost(response.data);
     return weatherModle1;

  }
  }