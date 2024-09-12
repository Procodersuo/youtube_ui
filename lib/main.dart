import 'package:flutter/material.dart';
import 'package:youtube_ui_design/screens/home_Screen.dart';
import 'package:get/get.dart';
import 'package:camera/camera.dart';
import 'package:youtube_ui_design/screens/upload_shorts.dart';
late List<CameraDescription> cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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
          CameraApp.id : (context)=> const CameraApp(),
        },
      )
    );
  }
}

