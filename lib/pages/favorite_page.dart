import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pas_mobile_11pplg2_25/components/custom_tile.dart';
import 'package:pas_mobile_11pplg2_25/controllers/favorite_controller.dart';

class FavoritePage extends StatelessWidget {
  final favoriteController = Get.find<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorite")),
      body: Obx(() {
        if (favoriteController.favorites.isEmpty) {
          return Center(child: Text("Belum ada favorite"));
        }
        return ListView.builder(
          itemCount: favoriteController.favorites.length,
          itemBuilder: (context, index) {
            final fav = favoriteController.favorites[index];
            return CustomTile(
              name: fav['name'],
              language: fav['language'],
              poster: fav['poster'],
              premiered: fav['premiered'],
              trailing: Obx(() => IconButton(
                icon: Icon(
                  favoriteController.isFavorite(fav['id'])
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: () {
                  if (favoriteController.isFavorite(fav['id'])) {
                    favoriteController.removeFromFavorite(fav['id']);
                  } else {
                    favoriteController.addToFavorite(fav);
                  }
                },
              )),
              
            );
          },
        );
      }),
    );
  }
}