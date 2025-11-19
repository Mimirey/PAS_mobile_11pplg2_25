import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pas_mobile_11pplg2_25/controllers/favorite_controller.dart';
import 'package:pas_mobile_11pplg2_25/pages.dart';
import 'package:pas_mobile_11pplg2_25/routes.dart';

void main() {
  Get.put(FavoriteController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute:AppRoutes.LoginPage ,
      getPages: AppPages.pages,
    );
  }
}



