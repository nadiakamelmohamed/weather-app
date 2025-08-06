import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubites/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/cubites/get_weather_cubit/weather_states.dart';
import 'package:weather/views/search_screen.dart';
import 'package:weather/widgets/no_weather_widget.dart';
import 'package:weather/widgets/weather_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("Weather App"),
        elevation: 5,
        actions: [
          IconButton(
            icon:Icon(Icons.search),
            onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(context)=> SearchScreen())); }),
          ],
      ),
      body: BlocBuilder<GetWeatherCubit,Weather>(
                builder: (context, state) {
                  if(state is WeatherLoaded)
                  {
                   return WeatherWidget();
                  }
                  else if(state is NoWeather)
                  {
                   return NoWeatherWidget();
                  }
                  else
                  {
                  return Text("noo");
                  }
                },
              ),
    );
  }
}