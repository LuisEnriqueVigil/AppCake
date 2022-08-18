import 'package:flutter/material.dart';

//import paquetes
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:animate_do/animate_do.dart';

//import model para el provider 
import 'package:app_pasteles/domain/models/animated_model.dart';

//importando ruta de pagina para la navegacio
import 'package:app_pasteles/presentation/cart/pages/cart_page.dart';




class ActionCartAppBar extends StatelessWidget {
  const ActionCartAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final animatedModel = Provider.of<AnimatedModelProvider>(context , listen: true); 

    return Pulse(
      duration: Duration(milliseconds: 400),
      animate: false,
      controller: (animationController)=> animatedModel.animationController = animationController,
      
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage())); 
        },
        child: Container(
          margin: EdgeInsets.only(right: 10,bottom: 5.0,top:5),
          width: 100,height: 20.0,
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color:( animatedModel.coutItems>0 )? Colors.purple:Colors.purple.withOpacity(0.50),
            borderRadius: BorderRadius.circular(25)
          ),

          child: Stack(
            children: [
              Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Carrito',
                      style:GoogleFonts.poppins(
                        fontSize: 15.0,
                        color: (animatedModel.coutItems >0)?Colors.white:Colors.black
                      ),),
                    Icon(
                      Icons.car_rental,
                      size: 25.0,
                      color: (animatedModel.coutItems >0)?Colors.white:Colors.black
                    ),
                  ],
                ),
              ),

              Positioned(
                right: 5.0,
                child: (animatedModel.coutItems > 0)? 
                Container(
                  height: 25.0,width: 25.0,
                  decoration: BoxDecoration(
                    color:Colors.red,
                    borderRadius: BorderRadius.circular(20.0)   
                  ),
                  child: Center(
                    child: Text(
                      '${animatedModel.coutItems}',
                       style: GoogleFonts.poppins(
                         fontSize: 15.0
                       ),
                    ),
                  ),
                ): 
                Container()
              ), 
            ],
          ),
        ),
      ),
    );
  }
}