
import 'package:app_pasteles/domain/models/animated_model.dart';
import 'package:flutter/material.dart';
//importando paquetes
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

//importando data
import 'package:app_pasteles/data/kids_data/kids_data.dart';
//importando modelo
import 'package:app_pasteles/domain/models/cart_model.dart';



class SizeCakeCustom extends StatelessWidget {

  final Item cakeItem;

  const SizeCakeCustom({
   this.cakeItem,
  });

  @override
  Widget build(BuildContext context) {

    final styleText =  GoogleFonts.poppins(color: Colors.white,fontSize: 15.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Cantidad de porciones'),
        SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildOptionSize(styleText,this.cakeItem.sizeDisp[0],context),
            buildOptionSize(styleText,this.cakeItem.sizeDisp[1],context),
            buildOptionSize(styleText,this.cakeItem.sizeDisp[2],context),
          ],
        ),
      ],
    );
  }

  Widget buildOptionSize(TextStyle styleText,double optionSize,BuildContext context){
    final sizeCake = Provider.of<CartModelProvider>(context,listen: true);
    final animateDetail = Provider.of<AnimatedModelProvider>(context,listen: true);  

    return GestureDetector(
      onTap: (){
        ///TODA LA LOGICA DE LA ANIMACION PARA EL TAMAÑO 
        if(!animateDetail.isAnimateDetail){
          animateDetail.animationDetail.forward(); 
          animateDetail.isAnimateDetail = !animateDetail.isAnimateDetail; 
        }
        else{ 
          animateDetail.animationDetail.reverse();
          animateDetail.isAnimateDetail = !animateDetail.isAnimateDetail; 
        }
        //print(animateDetail.isAnimateDetail);
         sizeCake.sizeCake = optionSize;
      },
      child: Container(
       height: 35.0,width: 95.0,
       decoration: BoxDecoration(
         color:(sizeCake.sizeCake == optionSize)? Colors.purple : Colors.purple.withOpacity(0.2), 
         borderRadius: BorderRadius.circular(10.0)
       ),
       child: Center(
         child: Text(optionSize.toString(), 
           style:styleText,
         )
       ),
       ),
    );
  }
}