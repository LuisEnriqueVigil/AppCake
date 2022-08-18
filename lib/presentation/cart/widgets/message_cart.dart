
//importando paquetes
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageCart extends StatelessWidget {
  const MessageCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.blue,
          ), 
          Container(
            // height: 30.0,
            width: 220.0,
            child: Text('''Si deseas algunos arreglos adicionales comunicate con nosotros''',
            style: GoogleFonts.poppins(fontSize:15.0),))
        ],
      ),
    );
  }
}