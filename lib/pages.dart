import 'package:get/get_navigation/get_navigation.dart';
import 'package:pas_mobile_11pplg2_25/bindings/login_binding.dart';
import 'package:pas_mobile_11pplg2_25/bindings/register_binding.dart';
import 'package:pas_mobile_11pplg2_25/bindings/show_binding.dart';
import 'package:pas_mobile_11pplg2_25/bindings/splashscreen_binding.dart';
import 'package:pas_mobile_11pplg2_25/pages/login_page.dart';
import 'package:pas_mobile_11pplg2_25/pages/register_page.dart';
import 'package:pas_mobile_11pplg2_25/pages/show_page.dart';
import 'package:pas_mobile_11pplg2_25/pages/splashscreen_page.dart';
import 'package:pas_mobile_11pplg2_25/routes.dart';

class AppPages{
  static final pages=[
    GetPage(name: AppRoutes.LoginPage, page: ()=>LoginPage(),binding: LoginBinding()),
    GetPage(name: AppRoutes.SplashPage, page: ()=>SplashscreenPage(), binding: SplashscreenBinding()),
    GetPage(name: AppRoutes.ShowPage, page: ()=>ShowPage(),binding: ShowBinding()),
    GetPage(name: AppRoutes.RegisterPage, page: ()=>RegisterPage(),binding: RegisterBinding()),
  ];
}