import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itawe/controllers/appController.dart';
import 'package:itawe/controllers/homeController.dart';
import 'package:itawe/screens/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AppController());
  Get.put(HomeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Itawe',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
