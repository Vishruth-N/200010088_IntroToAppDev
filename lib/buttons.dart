import 'package:flutter/material.dart';

// creating Stateless Widget for buttons
class MyButton extends StatelessWidget {

// declaring variables
  dynamic color;
  final textColor;
  final String buttonText;
  final buttontapped;
  dynamic radius;

//Constructor
  MyButton({this.color, this.textColor, this.buttonText, this.buttontapped});

  @override
  Widget build(BuildContext context) {
    if(buttonText == '+'||buttonText == '-'||buttonText == 'x'||buttonText == '/'||buttonText == '%'){
       radius = BorderRadius.circular(3000);
       color = Colors.white10;
    }
    else {
       radius = BorderRadius.circular(0);
    }
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRRect(
          borderRadius: radius,
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono'
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}