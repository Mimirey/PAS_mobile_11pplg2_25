import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_25/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilController extends GetxController{
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.clear(); 
    Get.offAllNamed(AppRoutes.LoginPage);
  }
}