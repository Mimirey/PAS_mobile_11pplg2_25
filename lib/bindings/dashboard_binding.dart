import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_25/controllers/dashboard_controller.dart';
import 'package:pas_mobile_11pplg2_25/controllers/favorite_controller.dart';
import 'package:pas_mobile_11pplg2_25/controllers/profil_controller.dart';
import 'package:pas_mobile_11pplg2_25/controllers/show_controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(()=> DashboardController());
    Get.lazyPut<ShowController>(()=> ShowController());
    Get.lazyPut<FavoriteController>(()=> FavoriteController());
    Get.lazyPut<ProfilController>(()=> ProfilController());

  }

}