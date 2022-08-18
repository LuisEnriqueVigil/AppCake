import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//importando paquetes
import 'package:provider/provider.dart';

//importando widgets
import 'package:app_pasteles/presentation/home/widgets/action_cart.dart';
//importando modelo
import 'package:app_pasteles/domain/models/favorite_model.dart';

///TODO: AQUI NOS QUEDAMOS, MODELO DE LISTA DE FAVORITOS Y REALIZAR MANEJO DE LA LISTA

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoriteModel = Provider.of<FavoriteModel> (context, listen: true); 
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                    ),
                    Container(
                      height: 60,width: 120, 
                      child: ActionCartAppBar()
                    ),
                  ],
                ),
              ),
              SizedBox(
                 height: 20.0,
              ),
              Text('Tus pasteles favoritos:'),

              Expanded(
                
                child: ListView.builder(
                  itemCount: favoriteModel.listfavorite.length, 
                  itemBuilder: (BuildContext context, int index) { 

                    return (favoriteModel.listfavorite.length > 0) ?

                    Container(
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
                          image: AssetImage(favoriteModel.listfavorite[index].imageUrl)
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
                                  Text('Precio: ${favoriteModel.listfavorite[index].price}',
                                      style: GoogleFonts.poppins(
                                        fontSize: 22.0,
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold
                                      ),
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
                          favoriteModel.removeFavorite(favoriteModel.listfavorite[index]);
                        },
                      ),
                    )

                ],
            ),
          ) : 
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
                  Text('Aun no tienes agregados')
                ],
                ) ;
          },      
            ),
              )
          ],
          ),
        ),
      ),
    );
  }
}