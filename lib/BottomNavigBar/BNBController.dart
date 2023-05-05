import 'package:get/get.dart';
class BNBController extends GetxController{
  RxInt currentIndex = 0.obs;

  void changeIndex(int val){
    currentIndex.value = val;
    update();
  }
}