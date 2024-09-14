import 'package:flutter/material.dart';

class NoWeatherPage extends StatelessWidget {
  const NoWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'There Is No Weather 😠 ',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            Text(
              ' Start Searching Now 🔍 ',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



          //  Container(
          //     color: Colors.orange,
          //     child: Column(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.only(top: 120),
          //           child: Center(
          //             child: Column(
          //               children: [
          //                 Text(
          //                   Provider.of<WeatherProvider>(context).cityName!,
          //                   style: TextStyle(
          //                       fontWeight: FontWeight.w800, fontSize: 36),
          //                 ),
          //                 Text(
          //                   'Updated: 12:11 PM',
          //                   style: TextStyle(fontSize: 16),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           height: 46,
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Image.asset('assets/clear.png'),
          //             SizedBox(
          //               width: 50,
          //             ),
          //             Text(
          //               weatherData!.temp.toInt().toString(),
          //               style: TextStyle(
          //                 fontSize: 35,
          //                 fontWeight: FontWeight.w800,
          //               ),
          //             ),
          //             SizedBox(
          //               width: 50,
          //             ),
          //             Column(
          //               children: [
          //                 Text('Max '),
          //                 Text('Min : ${weatherData!.minTemp.toInt()}'),
          //               ],
          //             )
          //           ],
          //         ),
          //         SizedBox(
          //           height: 55,
          //         ),
          //         Text(
          //           weatherData!.weatherStateName,
          //           style: TextStyle(fontWeight: FontWeight.w800, fontSize: 36),
          //         ),
          //       ],
          //     ),
          //   ),