import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubites/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/cubites/get_weather_cubit/weather_states.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Theme.of(context).colorScheme.primary,
        title: Text("Search"),
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
             onFieldSubmitted:(value){
              BlocProvider.of<GetWeatherCubit>(context).getWeather(country: value);
              Navigator.pop(context);
             },
            decoration:InputDecoration(
              suffixIcon: Icon(Icons.search),
              labelText:"search",
              hintText:"Enter the City",
              enabledBorder:OutlineInputBorder(borderSide: BorderSide(color:  Theme.of(context).colorScheme.primary)),
              focusedBorder:OutlineInputBorder(borderSide: BorderSide(color:  Theme.of(context).colorScheme.primary)),
            )
          ),
        ),
      ),
    );
  }
}