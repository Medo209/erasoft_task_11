import 'package:flutter/material.dart';

class Buttom extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  final Color color;
  final Color textcolor;
  final TextStyle textStyle;
  final double fontsize;
  final FontWeight fontWeight;

  const Buttom({
    super.key,
    required this.text,
    required this.ontap,
    required this.color,
    required this.textcolor,
    required this.textStyle,
    required this.fontsize,
    required this.fontWeight,
  });

  @override
 Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(19),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontsize,
              fontWeight: fontWeight,
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
