import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pas_mobile_11pplg2_25/controllers/splashscreen_controller.dart';

class SplashscreenPage extends StatelessWidget {
   SplashscreenPage({super.key});
  final splashscreenController=Get.find<SplashscreenController>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Ini splashscreen"),
    );
  }
}