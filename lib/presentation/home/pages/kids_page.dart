
import 'package:app_pasteles/domain/models/favorite_model.dart';
import 'package:app_pasteles/presentation/detail/pages/detail_page.dart';
import 'package:app_pasteles/presentation/favorite/pages/favorite_page.dart';
import 'package:flutter/material.dart';

//importando data
import 'package:app_pasteles/data/kids_data/kids_data.dart';
import 'package:google_fonts/google_fonts.dart';

//importando modelo para provider
import 'package:provider/provider.dart';


class KidsCakePage extends  StatefulWidget {
 
  @override
  _KidsCakePageState createState() => _KidsCakePageState();
}

class _KidsCakePageState extends State<KidsCakePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: double.infinity,height: double.infinity,
            color: Colors.purple.withOpacity(0.6),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left:10.0,top:15),
                child: Text('Que deseas pedir hoy?')
              ),
              Expanded(
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  crossAxisCount:2,
                  childAspectRatio: 1/1.5,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                  children: cakesKids().map((item) =>cardCake(item,context)).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget cardCake (Item item , BuildContext context){ 


    final favModel = Provider.of<FavoriteModel>(context, listen: true);

    return Container( 
      margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
      height: 150,width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.purple.withOpacity(0.8),
      ),
      child: Stack(
        children: [
            ///[Imagen] del pastel que se mostrara 
          Align(
            child: Image(
              image: AssetImage(item.imageUrl),
            ),
          ),

          ///[bton Ver] para ver el detalle del producto
           Positioned(
           bottom: 10,right: 10.0,
           child: GestureDetector(
            
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPageCake(cakeItem: item,)));
             },
             //////
             child: Container(
               width: 40.0,
               padding: EdgeInsets.all(2.5),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5.0),
                 color: Colors.teal.withOpacity(0.4)
               ),
               child: Center(
                 child: Text('Ver',
                 style: GoogleFonts.poppins(
                   fontSize: 15.0,
                   color: Colors.white.withOpacity(0.8)
                 ),),
               )
             ),
           ),
         ),

         ///ICONO PARA AÑADIR A FAVORITOS
         Positioned(
           top: 10,left: 10.0,
           child: GestureDetector(
            //AHORA FALTA MEJORAR LA PAGINA DE FAVORITOS
             onTap: (){
               favModel.addFavorite(item);
               //agregando el snackBar para agregar a favoritos
               final snackbar = SnackBar(
                 backgroundColor: Colors.purple,
                 content: Text("Agregado a favoritos"),
                 action: SnackBarAction(
                    label: "Ver",
                    textColor: Colors.white,
                    onPressed: (){ 
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> FavoritePage()));
                    },
                 ),
               );
               ScaffoldMessenger.of(context).showSnackBar(snackbar);
             },
             child: Container(
               height: 30,
               decoration: BoxDecoration(
                 color: Colors.purpleAccent.withOpacity(0.8),
                 borderRadius: BorderRadius.all(Radius.circular(8))
               ),
               padding: EdgeInsets.all(2.5),
               child: Row(
                 children: [
                   Text("Agregar a ",
                      style:GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.normal) ,
                   ),
                   Icon(
                      Icons.favorite, 
                      size: 20,
                      color: Colors.deepPurple.withOpacity(0.8),
                  ),
                 ],
               )
             ),
           ),
         ),

        ],
      ),
    ); 
  }
}