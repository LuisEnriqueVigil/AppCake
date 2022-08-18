import 'package:app_pasteles/domain/models/favorite_model.dart';
import 'package:flutter/material.dart';
//importando paquetes
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

//import model 
import 'package:app_pasteles/data/kids_data/kids_data.dart';
import 'package:app_pasteles/domain/models/animated_model.dart';
import 'package:app_pasteles/domain/models/cart_model.dart';



class ButtonAddCart extends StatelessWidget {
  final Item cakeitem; 
  const ButtonAddCart({
    Key key, this.cakeitem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
     final animationModel = Provider.of<AnimatedModelProvider>(context,listen: true);
    final cartModel = Provider.of<CartModelProvider>(context,listen: true);

    final favModel = Provider.of<FavoriteModel>(context,listen: true);

    
    return GestureDetector(
      onTap: (){
        cartModel.addItem(cakeitem);
        animationModel.coutItems = animationModel.coutItems+1; 
        animationModel.iscartColor = true;
        if(!animationModel.isAnimated){
          animationModel.animationController.forward(); 
          animationModel.isAnimated =! animationModel.isAnimated; 
        }
        else{ 
          animationModel.animationController.reverse();
          animationModel.isAnimated =! animationModel.isAnimated; 
        }
        //AQUI LANZO EL CAMBIO DE  KEKE INTERIOR YA QUE AL AÑADIR AL CARRITO SE ESTARIA 
        //REALIZANDO EL PEDIDO FINALMENTE 
        cakeitem.cakeInterior = cartModel.cakeInterior; 
        cakeitem.sizeFinal = cartModel.sizeCake; 
        cakeitem.nameIntCake = cartModel.cakeIntName;
        
        
        ///[validacion de fecha] 
        
        if(cakeitem.dateCake != null ) 
        cakeitem.dateCake =cartModel.dateCake ;
        if(cakeitem.dateCake == null )
        cakeitem.dateCake = 'Sin fecha' ;

        ///[debug de datos de pedido]
        ///
        print(cakeitem.cakeInterior);
        print(cakeitem.sizeFinal);
        print(cakeitem.nameIntCake);
        print(cakeitem.dateCake);

      },
      child: Container(
      child: Center(
        child: Text('Añadir al carro',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize:15.0
          ),
        ),
      ),
      width: 150.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.red, 
        borderRadius:BorderRadius.circular(10.0)
      ),
      ),
    );
  }
}
