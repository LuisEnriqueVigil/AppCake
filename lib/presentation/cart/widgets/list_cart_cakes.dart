
//importando los paquetes
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
//importando modelo para el provider
import 'package:app_pasteles/domain/models/cart_model.dart';
import 'package:app_pasteles/domain/models/animated_model.dart';



class ListCartCakes extends StatelessWidget {
  
  @override 
  Widget build(BuildContext context) {
    //estilo de texto
    final styleText = GoogleFonts.poppins(fontSize: 18.0,color: Colors.purple);
    final styleText2 = GoogleFonts.poppins(fontSize: 15.0); 
    final styleText3 = GoogleFonts.poppins(fontSize: 22.0,color: Colors.purple,fontWeight: FontWeight.bold);


    final cartModel = Provider.of<CartModelProvider>(context); 
    final animatedModel = Provider.of<AnimatedModelProvider>(context);

    //AQUI SE REALIZA LA VALIDACION DE SI EXISTE ALGUN PRODUCTO DENTRO DEL CARRITO
    return (cartModel.listCart.length > 0) ?  
    
    Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: cartModel.listCart.length,
        itemBuilder: (BuildContext context, int index) 
        { 
          return Container(
            margin: EdgeInsets.symmetric(horizontal:20.0,vertical: 15.0),
            // color: Colors.red,
            child: Stack(
              children: [

                Container(
                  height: 260.0,width: 160,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage(cartModel.listCart[index].imageUrl)
                  ),
                ),

                Container(
                  height: 260.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    color: Colors.purple.withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 35.0,top:10.0,bottom: 8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly
                        children: [
                           Text('Resumen',
                              style: styleText,
                           ),
                           Text(cartModel.listCart[index].titleTorta,
                              style: styleText2,
                           ),
                           Text('Porciones',
                              style: styleText,
                           ),
                           Text(cartModel.listCart[index].sizeFinal.toString(),
                              style: styleText2,
                           ),
                           Text('Nombre:',
                              style: styleText,
                           ),
                           Text(cartModel.listCart[index].nameIntCake,
                              style: styleText2,
                           ),
                           Text('Recoger:',
                              style: styleText,
                           ),
                           Text(cartModel.listCart[index].dateCake,
                              style: styleText2,
                           ),
                           SizedBox(
                             height: 8.0,
                           ),
                           Text('Precio: ${cartModel.listCart[index].price}',
                               style: styleText3,
                           )
                        ],
                      ),
                    ),
                  )
                ),

                Positioned(
                    right: 2.0,
                    child: IconButton(
                      color: Colors.purple,
                      iconSize: 25.0,
                      icon: Icon(Icons.remove_circle),
                      onPressed: (){
                        animatedModel.coutItems = animatedModel.coutItems - 1 ;
                        cartModel.removeItem(cartModel.listCart[index]);
                      },
                    ),
                  )

              ],
            ),
          );
        },
        
      ),
    )

    :  ///[OPERADOR TERNARIO] PARA REALZIAR LA VALIDACION DE LO QUE SE MOSTRARA
    
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 100.0,
        ),
        Container(
          height: 50.0,width: 50.0,
          child: Icon(
            Icons.shopping_basket_outlined,
            size: 50.0,
            color: Colors.red,
          )
        ),
        Text('Tu carrito esta vacio...')
      ],
    ); 

  }
}