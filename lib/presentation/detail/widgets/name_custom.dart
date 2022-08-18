import 'package:flutter/material.dart';
//importando paquetes
import 'package:provider/provider.dart';
//importando modelo de data
// import 'package:app_pasteles/data/kids_data/kids_data.dart';
//modelo de provider
import 'package:app_pasteles/domain/models/cart_model.dart';


class NameCakeCustom extends StatelessWidget {
  // final Item cakeItem; 
  const NameCakeCustom({
    Key key, 
    // this.cakeItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameIntCake = Provider.of<CartModelProvider>(context,listen:true); 
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Nombre de la torta'),
        Container(
          width: 120.0,height: 40.0,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color:Colors.purple.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: TextField(
            onChanged: (valor){
              nameIntCake.cakeIntName = valor; 
            },
            autocorrect: false,
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
