import 'package:flutter/material.dart';
import 'package:youtube_ui_design/screens/home_Screen.dart';
import 'package:get/get.dart';

void main() {
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id : (context)=> const HomeScreen(),

        },
      )
    );

  }
}

