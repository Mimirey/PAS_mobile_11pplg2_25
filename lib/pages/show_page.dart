import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_25/components/custom_tile.dart';
import 'package:pas_mobile_11pplg2_25/controllers/show_controller.dart';

class ShowPage extends StatelessWidget {
  ShowPage({super.key});
  final showController= Get.find<ShowController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Show list"),),
      body: Obx((){

          if(showController.isLoading.value){
            return Center(child: CircularProgressIndicator(),);
          }
          return ListView.builder(
            itemCount: showController.showStandings.length,
            itemBuilder: (context,Index){
            final show= showController.showStandings[Index];              
            return Card(
                child: ListTile(
                  title: Text(show.name),
                  leading:CircleAvatar(backgroundImage: NetworkImage(show.image.medium), radius: 25,),
                  subtitle: Text(show.language.toString()),
                  trailing: Text(show.premiered.toString()),
                ),
                // child: CustomTile(
                //   name: show.name, 
                //   language: show.name, 
                //   poster: show.image.medium, 
                //   premiered: show.name),
              );
            });
        })
    );
  }
}