

import 'package:flutter/material.dart';


class AnimatedModelProvider extends ChangeNotifier{
  
  AnimationController _animationController; 
  bool _isAnimated =  false; 
  bool _iscartColor = false; 
  int _countItems = 0 ; 
  AnimationController _animationDetail; 
  bool _isanimateDetail = false;

 //AYUDA A MANEJAR MEJOR LA LOGICA DE LA ANIMACION
  bool get isAnimated => this._isAnimated; 
  set isAnimated (bool valor){
    this._isAnimated = valor;  
    notifyListeners();
  }

//UN FLAG ADICIONAL QUE FUE REEMPLAZADO EN LA VALIDACION POR EL COUNT INTEMS AL COMPARARLO CON CERO
  bool get iscartColor => this._iscartColor; 
  set iscartColor (bool valor){
    this._iscartColor = valor; 
    notifyListeners();

  }

//ESTO VA DE LA MANO CON LA CANTIDAD DE ITEMS QUE HAY EN EL CARRITO AL REMOVER ALGO
//SE LE VA RESTANDO UNO A ESTA VARIABLE 
  int get coutItems => this._countItems; 
  set coutItems (int valor){
    this._countItems = valor; 
    notifyListeners();
  }

  /// [CONTROLLER DE LA ANIMACION DEL BOTON DE CARRITO]
  AnimationController get animationController => this._animationController; 
  set animationController (AnimationController animationController){
    this._animationController = animationController; 
  }

  ///[CONTROLLER DE LA ANIMACION DEL TAMANIO DEL PASTEL EN PAGINA DETALLE]
  AnimationController get animationDetail => this._animationDetail; 
  set animationDetail (AnimationController animationController){ 
    this._animationDetail = animationController; 
  }

  bool get isAnimateDetail => this._isanimateDetail; 
  set isAnimateDetail (bool valor){
    this._isanimateDetail = valor;  
    notifyListeners();
  }



}