import 'package:flutter/material.dart';

//importando la clase Items
import 'package:app_pasteles/data/kids_data/kids_data.dart';


class CartModelProvider extends ChangeNotifier { 

  List<Item> listCart = [];
  String _cakeInterior = 'Keke'; 
  double _sizeCake = 12; 
  String _cakeIntName = 'Sin nombre'; 
  String _dateCake ; 
  ///[metodos] para agregar y quitar elementos de nuestro carrito de compras

  void removeItem(Item valor){
    listCart.remove(valor);
    
    notifyListeners(); 
  }

  void addItem(Item valor){
    listCart.add(valor);
    notifyListeners();
  }

  ///[metodos] que permitiran cambiar y elegir los precios y personalizar las tortas 
  String get cakeInterior => this._cakeInterior; 
  set cakeInterior(String valor){ 
    this._cakeInterior = valor; 
    notifyListeners();
  }

  double get sizeCake => this._sizeCake; 
  set sizeCake (double valor){ 
    this._sizeCake = valor; 
    notifyListeners();
  }


  String get cakeIntName => this._cakeIntName; 
  set cakeIntName (String valor){
    this._cakeIntName = valor; 
    notifyListeners();
  }

  String get dateCake => this._dateCake; 
  set dateCake (String valor){ 
    this._dateCake = valor; 
    notifyListeners();
  }




}