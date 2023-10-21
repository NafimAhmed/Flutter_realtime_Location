import 'package:flutter/material.dart';
import 'package:real_time_location_without_google_map_api/home.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType){
          return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                // This is the theme of your application.

                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home:  Home()
          );
        });



  }
}

