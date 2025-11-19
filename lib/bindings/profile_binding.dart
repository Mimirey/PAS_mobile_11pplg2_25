import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_25/controllers/profil_controller.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ProfilController>(()=>ProfilController());
  }
}