import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DashboardController extends GetxController {
  var selectedIndex = 0.obs;
  void changePage(int index) => selectedIndex.value = index;
}