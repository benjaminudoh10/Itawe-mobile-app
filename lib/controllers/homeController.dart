import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt index = 0.obs;

  setIndex(int i) {
    index.value = i;
  }
}
