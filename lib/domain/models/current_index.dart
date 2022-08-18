
import 'package:flutter/material.dart';

class  CurrentIndexProvider extends ChangeNotifier{ 
 
  int _indexSelectPage = 0 ; 

  int get indexSelectPage {
    return this._indexSelectPage;
  } 

   set indexSelectPage(int valor){ 

    this._indexSelectPage =  valor; 
    notifyListeners();

  }

}