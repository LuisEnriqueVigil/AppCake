import 'package:app_pasteles/domain/models/animated_model.dart';
import 'package:app_pasteles/domain/models/cart_model.dart';
import 'package:app_pasteles/domain/models/current_index.dart';
import 'package:app_pasteles/domain/models/favorite_model.dart';
import 'package:flutter/material.dart';

import 'package:app_pasteles/presentation/home/pages/principal_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> new CurrentIndexProvider(),),
        ChangeNotifierProvider(create: (_)=> new AnimatedModelProvider(),),
        ChangeNotifierProvider(create: (_)=> new CartModelProvider(),),
        ChangeNotifierProvider(create: (_)=> new FavoriteModel(),)

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
         theme: ThemeData(

          primarySwatch: Colors.purple,
          textTheme: TextTheme(
             headline1: GoogleFonts.poppins(),
             button: GoogleFonts.poppins(),
              bodyText1: GoogleFonts.poppins(),
             bodyText2: GoogleFonts.poppins(
               fontSize: 20.0,fontWeight: FontWeight.w600
             ) //funciona con los textos del navigatory los de la app
          )
        ),

        title: 'Material App',
        home:PrincipalPage()
      ),
    );
  }
}