import 'dart:convert';
import 'dart:math' as Debug;

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile_11pplg2_25/model/login_model.dart';
import 'package:pas_mobile_11pplg2_25/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{
  final TextEditingController username= TextEditingController();
  final TextEditingController password= TextEditingController();
  final String baseUrl="https://mediadwi.com/api/latihan/login";
  final isLoading= false.obs;

  login() async{
    if (username.text.isEmpty || password.text.isEmpty) {
      Get.snackbar("Error", "Username dan Password belum terisi!");
      return;
    }
    isLoading.value=true;

    final response= await http.post(
      Uri.parse(baseUrl),
      body:({
        "username":username.text,
        "password":password.text
      })
    );

    if (response.statusCode==200) {
      final loginData= loginModelFromJson(response.body);

      if(loginData.status){
        final prefs=await SharedPreferences.getInstance();
        await prefs.setString("token", loginData.token ?? "");

        Get.offAllNamed(AppRoutes.SplashPage);
        Get.snackbar("Success", loginData.message);
      }else {
        Get.snackbar("Login gagal", loginData.message);
      }
    } else{
      Get.snackbar("Error", "Server mengembalikan ${response.statusCode}");
    }
    isLoading.value=false;
  }
}