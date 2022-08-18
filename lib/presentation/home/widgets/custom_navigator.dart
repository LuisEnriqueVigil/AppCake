import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_pasteles/domain/models/current_index.dart';


class CustomNavigatorBar extends StatelessWidget {

  const CustomNavigatorBar ({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final currentPageIndex = Provider.of<CurrentIndexProvider> (context);
    return BottomNavigationBar(
      backgroundColor: Colors.purple.withOpacity(0.2),
      showUnselectedLabels: false,
      unselectedIconTheme: IconThemeData(
        color: Colors.purple.withOpacity(0.2)
      ),
      selectedIconTheme: IconThemeData(
        color: Colors.purple,
        size: 30.0
      ),
      onTap: (int i) => currentPageIndex.indexSelectPage = i,
      currentIndex: currentPageIndex.indexSelectPage ,
      elevation: 0,
      items:<BottomNavigationBarItem>  [
        BottomNavigationBarItem(
          icon: Icon(Icons.cake_rounded), 
          label: 'Pasteles'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite), 
          label: 'Favoritos'
        ), 
        BottomNavigationBarItem(
          icon: Icon(Icons.fireplace_sharp), 
          label: 'Adicionales'
        ),  
      ],

    );
  }
}