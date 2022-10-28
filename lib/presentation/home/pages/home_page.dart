
import 'package:flutter/material.dart';

//importando paquete de letras
import 'package:google_fonts/google_fonts.dart';

//importando paginas 
import 'package:app_pasteles/presentation/home/pages/adult_page.dart';
import 'package:app_pasteles/presentation/home/pages/kids_page.dart';

//importando widgets
import 'package:app_pasteles/presentation/home/widgets/action_cart.dart';
import 'package:app_pasteles/presentation/home/widgets/leading_appbar.dart';
import 'package:app_pasteles/presentation/home/widgets/title_appbar.dart';




class HomePageApp extends StatelessWidget {
  const HomePageApp({Key key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold( 
        appBar: AppBar(
          title: CenterTitileCustom(),
          leading: LeadingCustomAppBar(),
          actions: [
            ActionCartAppBar()
          ],
          elevation: 0,
          backgroundColor: Colors.purple.withOpacity(0.2),
          bottom: TabBar(
            labelColor: Colors.white,
            labelStyle: GoogleFonts.poppins(),
            indicatorColor: Colors.purple,
            physics: BouncingScrollPhysics(),
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.vertical(top:Radius.circular(20.0)),
              color: Colors.purple.withOpacity(0.6)
            ), 
            tabs: [
              Tab(
                text: 'Niños',
                icon: Icon(Icons.child_care_outlined),
              ),
               Tab(
                text: 'Adultos',
                icon: Icon(Icons.person_pin),
              ),
               Tab(
                text: 'Bodas',
                icon: Icon(Icons.favorite),
              ),
               Tab(
                text: '15\'s',
                icon: Icon(Icons.fiber_smart_record_sharp),
              )
              
            ]
          ),
        ),
        body: TabBarView(
          children: [
            KidsCakePage(),
            AdultCakePage(),
            KidsCakePage(),
            AdultCakePage(),
          ],
        )
      ),
    );
  }
}






