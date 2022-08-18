import 'package:flutter/material.dart';


class CartAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Row(children: [
      IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: (){
          Navigator.pop(context);
        }, 
      ), 
      Text('Continuar comprando')
    ],);
  }
}