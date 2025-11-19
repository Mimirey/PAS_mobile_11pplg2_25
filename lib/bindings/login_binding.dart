import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_25/controllers/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoginController>(()=>LoginController());
  }
}