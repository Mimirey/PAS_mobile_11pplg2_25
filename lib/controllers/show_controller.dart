import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:pas_mobile_11pplg2_25/model/show_model.dart';

class ShowController extends GetxController{
  var isLoading=false.obs;
  var showStandings= <ShowModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchAPIShow();
  }
  
  fetchAPIShow() async{
    const url= "https://api.tvmaze.com/shows";

    try {
      //code yang berpotensi crash 
      isLoading.value=true;
      final response=await http.get(Uri.parse(url));
      print("status code"+response.statusCode.toString());
      print("status code"+response.body.toString());

      if (response.statusCode==200) {
        //pasang json response ke model
        final data=jsonDecode(response.body);
        final List standings= data['name'];
        showStandings.assignAll(standings.map((e) => ShowModel.fromJson(e),).toList());
      } else {
        Get.snackbar("Error", "message error dari BE");
      }
    } catch (e) {
      //tampil message error
      Get.snackbar("erroe", e.toString());
    }
    isLoading.value=false;
  }
}