import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/Model/classWeather.dart';
import 'package:flutter_application_1/Services/weather_service.dart';
import 'package:meta/meta.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
  getWeather({ required String city})async{
  try {
  WeatherModel  weatherModel  =await WeatherService().getWatherdata(city: city);  
  emit(WeatherLoaded(weatherModel:weatherModel ));
} on Exception catch (e) {
  emit(WeatherFailure());
}
  }
}
