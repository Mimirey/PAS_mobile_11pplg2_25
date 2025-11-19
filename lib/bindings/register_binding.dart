import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:pas_mobile_11pplg2_25/controllers/register_controller.dart';

class RegisterBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<RegisterController>(()=>RegisterController());
  }
}