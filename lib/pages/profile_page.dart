import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pas_mobile_11pplg2_25/components/textInfo.dart';
import 'package:pas_mobile_11pplg2_25/controllers/profil_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final profileController= Get.find<ProfilController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/images/gua.jpg"),
            ),
          ),
          TextInfo(label: 'Username', info: 'testingUser'),
          TextInfo(label: 'Full Name', info: 'Myra Isadora'),
          TextInfo(label: 'Email', info: 'testinguser@gmaiil.com'),
          TextInfo(label: 'Password', info: '12345678'),

          ElevatedButton(
            onPressed: profileController.logout, 
            child: Text('Logout'))
        ],
      )
    );
  }
}