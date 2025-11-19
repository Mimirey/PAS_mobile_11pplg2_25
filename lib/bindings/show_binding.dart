import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:pas_mobile_11pplg2_25/controllers/show_controller.dart';

class ShowBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ShowController>(()=>ShowController());
  }
}