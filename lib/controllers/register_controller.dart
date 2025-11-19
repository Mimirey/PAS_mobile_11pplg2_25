import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile_11pplg2_25/model/register_model.dart';
import 'package:pas_mobile_11pplg2_25/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController{
  final TextEditingController username= TextEditingController();
  final TextEditingController password= TextEditingController();
  final TextEditingController email= TextEditingController();
  final TextEditingController fullName= TextEditingController();

  final String baseUrl="https://mediadwi.com/api/latihan/register-user";
  final isLoading= false.obs;

  register() async{
    if (username.text.isEmpty || password.text.isEmpty ||email.text.isEmpty ||fullName.text.isEmpty) {
      Get.snackbar("Error", "Lengkapi data anda");
      return;
    }
    isLoading.value=true;

    final response= await http.post(
      Uri.parse(baseUrl),
      body:({
        "username":username.text,
        "password":password.text,
        "email":email.text,
        "full_name":fullName.text
      })
    );

    if (response.statusCode==200) {
      final registerData= registerModelFromJson(response.body);

      if (registerData.status) {
        Get.offAllNamed(AppRoutes.LoginPage);
        Get.snackbar("Success", registerData.message);
      }else{
        Get.snackbar("Login gagal", registerData.message);
        isLoading.value=false;
      }
    } else{
      Get.snackbar("Error", "return ${response.statusCode}");
    }
  }

  

}