import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pas_mobile_11pplg2_25/components/custom_button.dart';
import 'package:pas_mobile_11pplg2_25/components/custom_field.dart';
import 'package:pas_mobile_11pplg2_25/controllers/login_controller.dart';
import 'package:pas_mobile_11pplg2_25/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final loginController= Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Login"),),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomField(input: "Username", controller: loginController.username, isShow: false, isNumber: false),
            CustomField(input: "Password", controller: loginController.password, isShow: false, isNumber: false),
            Obx(()=>loginController.isLoading.value
            ?CircularProgressIndicator()
            : ElevatedButton(onPressed: loginController.login, child: Text("Login"))
            ),
           
          ],
        ),
      ),
    );
  }
}