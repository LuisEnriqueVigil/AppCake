//importando paquetes
import 'package:flutter/material.dart';

//importando widgets para la pagina
import 'package:app_pasteles/presentation/cart/widgets/list_cart_cakes.dart';
import 'package:app_pasteles/presentation/cart/widgets/message_cart.dart';
import 'package:app_pasteles/presentation/cart/widgets/app_bar_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CartAppBar(), 
            MessageCart(), 
            ListCartCakes()
          ],
        ),
      ),
    );
  }
}





