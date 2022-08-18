//importando paquetes 
import 'package:flutter/material.dart';

//importando data
import 'package:app_pasteles/data/kids_data/kids_data.dart';

//importnado widges
import 'package:app_pasteles/presentation/detail/widgets/button_add_cart.dart';
import 'package:app_pasteles/presentation/detail/widgets/date_select.dart';
import 'package:app_pasteles/presentation/detail/widgets/name_custom.dart';
import 'package:app_pasteles/presentation/detail/widgets/size_custom.dart';
import 'package:app_pasteles/presentation/detail/widgets/cake_custom.dart';
import 'package:app_pasteles/presentation/detail/widgets/cake_photo.dart';

class DetailPageCake extends StatelessWidget {
  final Item cakeItem;
  const DetailPageCake({Key key, this.cakeItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PhotoCakeDetail(cakeItem: cakeItem),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizeCakeCustom(
                      cakeItem: this.cakeItem,
                    ),
                    OptiomCustomCake(
                    cakeItem: this.cakeItem,  
                    ),
                    NameCakeCustom(),
                    DateCustom()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: ButtonAddCart(
        cakeitem: this.cakeItem,
      ),
    );
  }
}








