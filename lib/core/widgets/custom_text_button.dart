import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({Key? key, this.onPressed, required this.text,required this.color, this.sizeText, this.fontWeight}) : super(key: key);
  final Function()? onPressed ;
  final String text;
  final FontWeight? fontWeight;
  final Color color;
  final double ? sizeText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child:  Text(
        text,
         style:  TextStyle(color: color,fontSize: sizeText,fontWeight: fontWeight ),
      ),
    );
  }
}
