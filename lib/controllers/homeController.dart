import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt initialIndex = 0.obs;

  setIndex(int index) {
    initialIndex.value = index;
  }
}
