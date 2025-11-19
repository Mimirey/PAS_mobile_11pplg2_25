import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_25/model/show_model.dart';
import 'package:pas_mobile_11pplg2_25/db_fav.dart';

class FavoriteController extends GetxController{
  var favorites = <Map<String, dynamic>>[].obs;

  @override
  void onInit(){
    super.onInit();
    loadFavorites();
  }

  loadFavorites()async {
    favorites.value= await FavDB().getFavorites();
  }

  addToFavorite(show) async {
    await FavDB().addFavorite({
      'id': show.id,
      'name': show.name,
      'language': show.language.toString().split('.').last,
      'poster': show.image.medium,
      'premiered': show.premiered.toString().substring(0, 10),
    });
    await loadFavorites();
  }

  removeFromFavorite(int id) async{
    await FavDB().removeFavorite(id);
    await loadFavorites();
  }

  bool isFavorite(int id) {
    return favorites.any((item) => item['id'] == id);
  }

}