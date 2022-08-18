
import 'package:flutter/material.dart';


class LeadingCustomAppBar extends StatelessWidget {
  const LeadingCustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      margin: EdgeInsets.only(left: 5.0,top:4,bottom: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color:Colors.black
      ),
    );
  }
}