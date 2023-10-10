import 'package:flutter/material.dart';
import 'package:flutter_application_1/Maneger/cubit/weather_cubit.dart';
import 'package:flutter_application_1/Screen/SearchScree.dart';
import 'package:flutter_application_1/Screen/Weather_screen.dart';
import 'package:flutter_application_1/Screen/no_weather.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Weather App"),
        centerTitle: true,
        actions: [
      IconButton(onPressed :(){
Navigator.push(context,
MaterialPageRoute(builder:(context) =>  SearchScreen(), ));} 
   , icon: Icon(Icons.search), 
     ),
     ],
      ),
      body: BlocBuilder<WeatherCubit , WeatherState>(
        builder:(context, state) {
            if(state is WeatherInitial){
             return NoWeatherBody();
          }  
          else if (state is WeatherLoaded) {
            return WeatherScreen(weatherModel: state.weatherModel);
          }
          else{
           return NoWeatherBody();
      }
        
        },
      ),
    );
  }
}
