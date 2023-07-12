import 'package:flutter/material.dart';
import 'package:labor/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonName, this.onTap});
  final String buttonName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        height: 55,
        width: 400,
        child: Center(
          child: Text(
            buttonName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
