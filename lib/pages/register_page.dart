import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:pas_mobile_11pplg2_25/components/custom_field.dart';
import 'package:pas_mobile_11pplg2_25/controllers/register_controller.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final registerController= Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Register"),),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomField(input: "Username", controller: registerController.username, isShow: false, isNumber: false),
            CustomField(input: "Password", controller: registerController.password, isShow: false, isNumber: false),
            CustomField(input: "Full Name", controller: registerController.fullName, isShow: false, isNumber: false),
            CustomField(input: "Email", controller: registerController.email, isShow: false, isNumber: false),

            Obx(()=>registerController.isLoading.value
            ?CircularProgressIndicator()
            : ElevatedButton(onPressed: registerController.register, child: Text("Login"))
            )
          ],
        ),
      ),
    );
  }
}