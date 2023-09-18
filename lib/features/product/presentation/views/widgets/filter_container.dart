import 'package:flutter/material.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 138,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(42),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        const Icon(Icons.keyboard_arrow_down_sharp)
      ]),
    );
  }
}