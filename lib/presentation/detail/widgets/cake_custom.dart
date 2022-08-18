import 'package:flutter/material.dart';
//importando data
import 'package:app_pasteles/data/kids_data/kids_data.dart';
//importando paquetes
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
//importando modelo
import 'package:app_pasteles/domain/models/cart_model.dart';


class OptiomCustomCake extends StatelessWidget {

  final Item cakeItem;

  const OptiomCustomCake({
   this.cakeItem,
  });

  @override
  Widget build(BuildContext context) {

    final styleText =  GoogleFonts.poppins(color: Colors.white,fontSize: 15.0);
    //TODO: ME FALTA CONSERVAR LOS DATOS DEL KEKE INTERIOR ELEGIDO
    // final optionCake = Provider.of<CartModelProvider>(context,listen:true); 
    // optionCake.cakeInterior = this.cakeItem.cakeInterior;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pastel Interior'),
        SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildOptionCake(styleText,this.cakeItem.cakeTipos[0],context),
            buildOptionCake(styleText,this.cakeItem.cakeTipos[1],context),
            buildOptionCake(styleText,this.cakeItem.cakeTipos[2],context),
            
          ],
        ),
      ],
    );
  }

  Widget buildOptionCake(TextStyle styleText,String option,BuildContext context) {
    final optionCake = Provider.of<CartModelProvider>(context,listen:true); 

    return GestureDetector(
      onTap: (){
        optionCake.cakeInterior = option; 
        //aqui se añaden los metodos que permitiran cambiar el precio total 
        //para visualizar mejor los cambios 
      },
      child: Container(
       height: 35.0,width: 95.0,
       decoration: BoxDecoration(
         color:(optionCake.cakeInterior==option)?Colors.purple:Colors.purple.withOpacity(0.2), 
         borderRadius: BorderRadius.circular(10.0)
            ),
       child: Center(
         child: Text(option, 
           style:styleText,
         )
       ),
       ),
    );
  }
}
