import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:pas_mobile_11pplg2_25/controllers/splashscreen_controller.dart';

class SplashscreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SplashscreenController>(()=>SplashscreenController());
  }
}