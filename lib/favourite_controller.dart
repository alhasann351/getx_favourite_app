import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class FavouriteController extends GetxController{
  RxList<String> name = ['Al-Hasan', 'Tali', 'Hasib', 'Karim', 'Rahim', 'Malik'].obs;
  RxList tempName = [].obs;

  setFavourite(index){
    if(tempName.contains(name[index].toString())){
      tempName.remove(name[index].toString());
    }else{
      tempName.add(name[index].toString());
    }
  }
}