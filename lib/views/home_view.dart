import 'package:_weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:_weather/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:_weather/models/weather_model.dart';
import 'package:_weather/views/serach_view.dart';
import 'package:_weather/widgets/no_weather_page.dart';
import 'package:_weather/widgets/weather_info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SearchPage();
              }));
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body:
          BlocBuilder<GetWeatherCubit, WeatherState>(builder: (context, state) {
        if (state is NoWeatherState) {
          return NoWeatherPage();
        } else if (state is WeatherLoadedState) {
          return WeatherInfoPage(
            weather: state.weatherModel
          );
        } else {
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Column(
                children: [
                  Text('Oops' , style: TextStyle(
                    fontSize: 35,
                  ),),
                  SizedBox(
                    height: 35,
                  ),
                   Text('There Was An ' , style: TextStyle(
                    fontSize: 35,
                  ),),
                    SizedBox(
                    height: 35,
                  ),
                       Text('Error ' , style: TextStyle(
                    fontSize: 35,
                    color: Colors.red,
                    fontWeight: FontWeight.w700
                  ),),
                    SizedBox(
                    height: 35,
                  ),
                         Text('Pls try later ' , style: TextStyle(
                    fontSize: 35,
                   
                  ),),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}



         // create states
         // create cubit
         // create function
         // provide cubit
         // integrate cubit
         // trigger cubit