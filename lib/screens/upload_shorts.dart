import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_common/get_reset.dart';
import 'dart:io';
import '../main.dart';
import 'package:path_provider/path_provider.dart';
int camera=0;
class CameraApp extends StatefulWidget {
  static const String id = "UploadScreen";
  const CameraApp({super.key});

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;
  bool isRecording = false; // Track if recording is happening
  XFile? videoFile;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[camera], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
          // Handle access errors here.
            break;
          default:
          // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> startVideoRecording() async {
    if (!controller.value.isInitialized) {
      print('Error: Camera is not initialized');
      return;
    }

    try {
      print('Starting video recording...');
      await Future.delayed(Duration(milliseconds: 500)); // Give some time for initialization
      await controller.startVideoRecording();
      setState(() {
        isRecording = true;
      });
      print('Recording started.');
    } catch (e) {
      if (e is CameraException) {
        print('Error starting video recording: ${e.code}');
      } else {
        print('Unknown error: $e');
      }
    }
  }


  Future<void> stopVideoRecording() async {
    if (!controller.value.isRecordingVideo) {
      print('Error: No video recording in progress or recording already stopped');
      return;
    }

    try {
      print('Stopping video recording...');
      XFile video = await controller.stopVideoRecording();
      setState(() {
        isRecording = false;
        videoFile = video;
      });
      print('Video saved at: ${video.path}');
    } catch (e) {
      if (e is CameraException) {
        print('Error stopping video recording: ${e.code}');
      } else {
        print('Unknown error: $e');
      }
    }
  }


  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: AnnotatedRegion(value: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light
      ),
      child: Scaffold(

        backgroundColor: Colors.black,
        body:controller.value.isInitialized ?  Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: CameraPreview(controller),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height - 450,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.rotate_90_degrees_ccw, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.speed, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shutter_speed_rounded, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.stars, color: Colors.white),
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.people, color: Colors.white),
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  setState(() {
                    camera=1;
                  });

                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: Container(
                    height: 70, // Set the desired height
                    width: 70,  // Set the desired width
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            )

          ],
        ) : Container(
          decoration: const BoxDecoration(
             color: Colors.black
          ),
          child: const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          ),
        ),

      ), )

    );
  }
}
