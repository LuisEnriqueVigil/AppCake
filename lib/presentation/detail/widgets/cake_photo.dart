import 'package:app_pasteles/domain/models/cart_model.dart';
import 'package:flutter/material.dart';
//importando data
import 'package:app_pasteles/data/kids_data/kids_data.dart';
//importando paquetes
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';
import 'package:provider/provider.dart';

//importando modelos para el provider
import 'package:app_pasteles/domain/models/animated_model.dart';

//importando widgets
import 'package:app_pasteles/presentation/home/widgets/action_cart.dart';



class PhotoCakeDetail extends StatelessWidget {

  final Item cakeItem;

  const PhotoCakeDetail({ Key key,@required this.cakeItem,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final animatedDetail = Provider.of<AnimatedModelProvider> (context,listen:true);
    final sizeCake = Provider.of<CartModelProvider>(context,listen: true);

    return Container(
      height: 350.0,width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.purple.withOpacity(0.20),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0)
        )
      ),

      child:  Stack(
        children: [
          //IMAGEN DE FONDO SE USO EL STACK PARA PODER MANEJAR MEJOR EL TAMAÑO DE LA IMAGEN
          Align(
            alignment: Alignment.center,
            child: Pulse(
              duration: Duration(milliseconds: 400),
              animate: false,
              controller: (animationController)=> animatedDetail.animationDetail = animationController,
              child: Image(
                height:(sizeCake.sizeCake ==12.0)? 295: ((sizeCake.sizeCake == 24.0)? 300: 380),
                image: AssetImage(cakeItem.imageUrl)
              ),
            ),
          ),

          Positioned(
            bottom: 10,right: 20.0,
            child: Container( 
              height: 45.0,width: 120.0,
              decoration: BoxDecoration(
                color:Colors.purple.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20.0), 
              ),
              child: Center(
                child: Text('Total:  ${cakeItem.price}',style: GoogleFonts.poppins(
                  color: Colors.white,fontSize: 18.0
                ),)
              ),
            ),
          ),

          Column(
           children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: (){
                    Navigator.pop(context); 
                  },
                ),
                Container(
                  height: 60, width: 120,
                  child: ActionCartAppBar()
                )
              ],
            ),
          ],
         ),
       ],
      ),
    );
  }
}