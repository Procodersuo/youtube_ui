import 'package:get/get.dart';
class BottomNavigationRoute extends GetxController {
var currentIndex =0.obs;
void indexChanger(int index)
{
  currentIndex.value=index;
}
}