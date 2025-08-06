import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubites/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/cubites/get_weather_cubit/weather_states.dart';
import 'package:weather/services/get_weather_data.dart';
import 'package:weather/views/home_screen.dart';
import 'package:weather/widgets/weather_widget.dart';

void main() async{
  log(await GetWeatherData().getWeatherData(Country: "cairo").toString());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>GetWeatherCubit(),
      child: Builder(
        builder:(context)=> BlocBuilder<GetWeatherCubit,Weather>(
          builder:(context,_)=> MaterialApp(
            theme: ThemeData(
            colorScheme: ColorScheme.light(
              primary: getColorBasedOnCondition(BlocProvider.of<GetWeatherCubit>(context).weatherModel?.conditionalState),
          ),
              ),
               home:HomeScreen(),
              ),
        ),
      ));
  }

  
}
 MaterialColor getColorBasedOnCondition(String? condition) {
    switch (condition?.toLowerCase()) {
      case 'clear':
      case 'sunny':
        return Colors.orange;
      case 'cloudy':
      case 'partly cloudy':
      case 'overcast':
        return Colors.blueGrey;
      case 'rain':
      case 'showers':
      case 'light rain':
      case 'moderate rain':
        return Colors.indigo;
      case 'thunderstorm':
      case 'thunder':
        return Colors.deepPurple;
      case 'snow':
      case 'sleet':
        return Colors.lightBlue;
      case 'fog':
      case 'mist':
        return Colors.grey;
      default:
        return Colors.blue;
    }
  }