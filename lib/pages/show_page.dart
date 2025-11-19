import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_25/components/custom_tile.dart';
import 'package:pas_mobile_11pplg2_25/controllers/favorite_controller.dart';
import 'package:pas_mobile_11pplg2_25/controllers/show_controller.dart';

class ShowPage extends StatelessWidget {
  ShowPage({super.key});
  final showController= Get.find<ShowController>();
  final favoriteController= Get.find<FavoriteController>();

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
            return CustomTile(
              name: show.name,
              language: show.language.name,
              poster: show.image.medium,
              premiered: show.premiered.toString().substring(0, 10),
              trailing: Obx(() => IconButton(
                icon: Icon(
                  favoriteController.isFavorite(show.id)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {
                  if (favoriteController.isFavorite(show.id)) {
                    favoriteController.removeFromFavorite(show.id);
                  } else {
                    favoriteController.addToFavorite(show);
                  }
                },
              )),
            );
            });
        })
    );
  }
}