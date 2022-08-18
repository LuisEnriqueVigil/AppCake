
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterTitileCustom extends StatelessWidget {
  const CenterTitileCustom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Bienvenido',
        style: GoogleFonts.poppins(
          color: Colors.black
        ),);
  }
}