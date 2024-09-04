import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_ui_design/screens/profile.dart';
import 'package:youtube_ui_design/screens/shorts_screen.dart';
import 'package:youtube_ui_design/screens/subscriptions.dart';
import '../getx/getx_bottom_navigation_route.dart';
import 'home.dart';
class HomeScreen extends StatelessWidget {
  static const  String id ="HomeScreen";
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    BottomNavigationRoute bottomNavigationRoute = Get.put(BottomNavigationRoute());
    return  Scaffold(
body: Obx(()
{
  switch(bottomNavigationRoute.currentIndex.value)
  {
    case 0 :
      return const Home();
      break;
    case 1 :
      return const ShortsScreen();
      break;

    case 2 :
      return const Text("Home Screen1");
      break;

    case 3 :
      return const Subscriptions();
      break;
    default :
     return const Profile();
     break;

  }

}),

bottomNavigationBar:Obx(()=> BottomAppBar(

  color: Colors.white,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: IconButton(onPressed: ()
            {
bottomNavigationRoute.indexChanger(0);
            }, icon: bottomNavigationRoute.currentIndex.value==0 ?  const Icon(Icons.home,size: 24,color: Colors.black,) : const Icon(Icons.home_outlined,size: 24,color: Colors.black)),
          ),
          const Text("Home")
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: IconButton(onPressed: ()
            {
              bottomNavigationRoute.indexChanger(1);
            }, icon: bottomNavigationRoute.currentIndex.value==1 ?  Image.asset("images/shorts_filled.png",color: Colors.black):  Image.asset("images/shorts.png",color: Colors.black)),
          ),
          const Text("Shorts")
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: IconButton(onPressed: ()
            {
              bottomNavigationRoute.indexChanger(2);
            }, icon:  Image.asset("images/plus.png",height: 30)),
          ),

        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: IconButton(onPressed: ()
            {
              bottomNavigationRoute.indexChanger(3);
            }, icon:   bottomNavigationRoute.currentIndex.value==3 ?  const Icon(Icons.subscriptions,size: 24,color: Colors.black) : const Icon(Icons.subscriptions_outlined,size: 24,color: Colors.black)),
          ),
          const Text("Subscriptions")
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: IconButton(onPressed: ()
            {
              bottomNavigationRoute.indexChanger(4);
            }, icon:   bottomNavigationRoute.currentIndex.value==4 ?  CircleAvatar(
              child: Container(
                height: 24,
               decoration:  const BoxDecoration(

                 border: Border(

                 ),
                 color: Colors.pink,
                 shape: BoxShape.circle

               ),
              ),
            ) :CircleAvatar(

              child: Container(
                height: 24,
                decoration: const BoxDecoration(

                    color: Colors.pink,
                    shape: BoxShape.circle

                ),
              ),
            ), ),
          ),
          const Text("You")
        ],
      ),

    ],
  ),
),)


//       bottomNavigationBar:Obx(()=>BottomNavigationBar(
//
//
//           selectedIconTheme: const IconThemeData(
//           size: 24
//         ),
//         type: BottomNavigationBarType.fixed,
//           selectedItemColor: Colors.black,
//           unselectedItemColor: Colors.black,
//           selectedLabelStyle: const TextStyle(
//             color: Colors.black,
//           ),
//           selectedFontSize: 12,
//           currentIndex: bottomNavigationRoute.currentIndex.value,
//           onTap: (index)
//           {
//             bottomNavigationRoute.indexChanger(index);
//           },
//           items:  [
//              BottomNavigationBarItem(
//
//               label: "Home",
//               icon: bottomNavigationRoute.currentIndex.value==0 ? const Icon(Icons.home, size: 24,): const Icon(Icons.home_outlined),),
//
//             BottomNavigationBarItem(
//                 label: "Shorts",
//                 icon: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: bottomNavigationRoute.currentIndex.value==1?  Image.asset("images/shorts_filled.png",height: 20,): Image.asset("images/shorts.png",height: 20,),
//                 )
//             ),
//              const BottomNavigationBarItem(
// label: "",
//
//                 icon: Icon(Icons.add_circle_outline_outlined,size: 30,)),
//              BottomNavigationBarItem(
//                 label: "Subscription",
//                 icon: Center(child: bottomNavigationRoute.currentIndex.value==3 ? const Icon(Icons.subscriptions,):  const Icon(Icons.subscriptions_outlined))),
//             const BottomNavigationBarItem(
//                 label: "You",
//                 icon: CircleAvatar(
//                 )),
//           ]
//       ),) ,
    );
  }
}
