import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubites/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/main.dart';
import 'package:weather/models/weather_model.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});
  @override
  Widget build(BuildContext context) {
  WeatherModel weatherModel=BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              getColorBasedOnCondition(weatherModel.conditionalState),
               getColorBasedOnCondition(weatherModel.conditionalState)[300]!,
                getColorBasedOnCondition(weatherModel.conditionalState)[50]!
              ],
              begin: Alignment.topCenter,end:Alignment.bottomCenter),
            
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(weatherModel.cityName,style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
            Text("Updated At ${weatherModel.date.hour}:${weatherModel.date.minute}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network("https:${weatherModel.image}"),
                Text(weatherModel.avDegree.round().toString()),
               Column(children: [
                 Text("MinVlaue : ${weatherModel.minDegree.round()}"),
                  Text("MaxValue: ${weatherModel.maxDegree.round()}"),
               ],)
              ],
            ),
             Text(weatherModel.conditionalState,style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
             )),
          ],
        ),
      ),
    );
  }
}