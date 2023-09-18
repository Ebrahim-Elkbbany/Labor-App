import 'package:flutter/material.dart';
import 'package:labor_app/constant.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonName, this.onTap,this.radiusCircular=16,this.height =55,this.width=double.infinity,this.fontSize=18,  this.color =kPrimaryColor});
  final String buttonName;
  final VoidCallback? onTap;
  final double radiusCircular;
  final double height ;
  final double width;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radiusCircular),
        ),
        height: height,
        width: width,
        child: Center(
          child: Text(
            buttonName,
            style:  TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
