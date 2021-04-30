import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt count = 0.obs;

  incrementCount() {
    count.value++;
  }
}
