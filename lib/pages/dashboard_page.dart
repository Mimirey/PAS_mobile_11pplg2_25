import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:pas_mobile_11pplg2_25/controllers/dashboard_controller.dart';
import 'package:pas_mobile_11pplg2_25/pages/favorite_page.dart';
import 'package:pas_mobile_11pplg2_25/pages/profile_page.dart';
import 'package:pas_mobile_11pplg2_25/pages/show_page.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});
  final dashboardController = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        index: dashboardController.selectedIndex.value,
        children: [
          ShowPage(),
          FavoritePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: dashboardController.selectedIndex.value,
        onTap: dashboardController.changePage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Show",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_outlined),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),
        ],
      ),
    ));
  }
}