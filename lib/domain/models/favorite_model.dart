

import 'package:flutter/material.dart';
//importando clase pasteles para poder crear una lista en base a esto 
import 'package:app_pasteles/data/kids_data/kids_data.dart';



class FavoriteModel extends ChangeNotifier{ 

  List<Item> listfavorite = [];
  bool _isfav = false; 

  void removeFavorite (Item valor){
    listfavorite.remove(valor); 
    notifyListeners();
  }

  void addFavorite (Item valor){
    listfavorite.add(valor); 
    notifyListeners();
  }

  bool get isFav => this._isfav; 
  set isFav (bool valor){
    this._isfav = valor; 
    notifyListeners();
  }



}