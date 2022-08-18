
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 //importando providers
import 'package:app_pasteles/domain/models/current_index.dart';

//Importano Widgets
import 'package:app_pasteles/presentation/home/widgets/custom_navigator.dart';
 
 //importando paginas 
import 'package:app_pasteles/presentation/adicional/pages/adicional_page.dart';
import 'package:app_pasteles/presentation/favorite/pages/favorite_page.dart';
import 'package:app_pasteles/presentation/home/pages/home_page.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({Key key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    final indexPage = Provider.of<CurrentIndexProvider>(context).indexSelectPage; 
    return Scaffold(
      //me permite poner una pagina sobre otra con respecto a la navegacion del tab bar
      body: IndexedStack(
        index:indexPage, //poner index,
        children: [
          HomePageApp(),  
          FavoritePage(), 
          AdicionalPage(),
        ],
      ),
      bottomNavigationBar: CustomNavigatorBar(),
    );
  }
}


