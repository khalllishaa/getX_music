import 'package:get/get.dart';
import 'package:getx_music/controller/bottom_nav_ctr.dart';

class Appbinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavCtr());
  }
}