import 'package:flutter/material.dart';
import 'package:labor_app/constant.dart';

class DividerContainer extends StatelessWidget {
  const DividerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 5,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
