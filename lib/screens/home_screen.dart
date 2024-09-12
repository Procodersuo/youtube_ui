import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:youtube_ui_design/screens/profile.dart';
import 'package:youtube_ui_design/screens/shorts_screen.dart';
import 'package:youtube_ui_design/screens/subscriptions.dart';
import 'package:youtube_ui_design/screens/upload_shorts.dart'; // Assuming this is your CameraApp
import '../getx/getx_bottom_navigation_route.dart';
import 'home.dart';
class HomeScreen extends StatelessWidget {
  static const String id = "HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationRoute bottomNavigationRoute =
        Get.put(BottomNavigationRoute());
    return SafeArea(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value:const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
          body: Obx(() {
            switch (bottomNavigationRoute.currentIndex.value) {
              case 0:
                return const Home();
              case 1:
                return const ShortsScreen();
              case 3:
                return const Subscriptions();
              case 4:
                return const Profile();
              default:
                return const Home(); // Fallback to Home in case of invalid index
            }
          }),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              selectedIconTheme: const IconThemeData(size: 24),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black,
              selectedLabelStyle: const TextStyle(
                color: Colors.black,
              ),
              selectedFontSize: 12,
              currentIndex: bottomNavigationRoute.currentIndex.value,
              onTap: (index) {
                if (index == 2) {
                  // Navigate to CameraApp when index is 2
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CameraApp()),
                  );
                } else {
                  // Change the index for other tabs
                  bottomNavigationRoute.indexChanger(index);
                }
              },
              items: [
                BottomNavigationBarItem(
                  label: "Home",
                  icon: bottomNavigationRoute.currentIndex.value == 0
                      ? const Icon(Icons.home, size: 24)
                      : const Icon(Icons.home_outlined),
                ),
                BottomNavigationBarItem(
                  label: "Shorts",
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: bottomNavigationRoute.currentIndex.value == 1
                        ? Image.asset(
                            "images/shorts_filled.png",
                            height: 20,
                          )
                        : Image.asset(
                            "images/shorts.png",
                            height: 20,
                          ),
                  ),
                ),
                const BottomNavigationBarItem(
                  label: "",
                  icon: Icon(Icons.add_circle_outline_outlined, size: 30),
                ),
                BottomNavigationBarItem(
                  label: "Subscription",
                  icon: Center(
                    child: bottomNavigationRoute.currentIndex.value == 3
                        ? const Icon(Icons.subscriptions)
                        : const Icon(Icons.subscriptions_outlined),
                  ),
                ),
                const BottomNavigationBarItem(
                  label: "You",
                  icon: SizedBox(
                    height: 24,
                    child: CircleAvatar(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
