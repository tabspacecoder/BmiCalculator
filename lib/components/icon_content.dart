import 'package:flutter/material.dart';
import '../constants.dart';
class MainColumn extends StatelessWidget {
  final IconData displayIcon ;
  final String displayText;
  MainColumn({@required this.displayIcon,@required this.displayText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
        displayIcon,
        size: 80.0,

      ),
        SizedBox(height: 15.0,),
        Text(displayText,style:kLabelTextStyle )],
    );
  }
}