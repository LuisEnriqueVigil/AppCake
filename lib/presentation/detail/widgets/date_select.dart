import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//importando modelo para el provider
import 'package:app_pasteles/domain/models/cart_model.dart';


class DateCustom extends StatelessWidget {
  const DateCustom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateCake = Provider.of<CartModelProvider>(context); 
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Fecha de recojo'),
        Container(
          width: 120.0,height: 40.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color:Colors.purple.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: TextField(
            autocorrect: false,
            onChanged: (valor){
              dateCake.dateCake = valor; 
            },
            keyboardAppearance: Brightness.dark,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              fillColor: Colors.purple.withOpacity(0.2),
              border: InputBorder.none 
            ),
          ),
        )
      ],
    );
  }
}
