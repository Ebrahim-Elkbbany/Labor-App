
import 'package:flutter/material.dart';

class StepContainer extends StatelessWidget {
  const StepContainer({
    super.key, required this.color,required this.num
  });
  final Color color;
  final String num;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: 63,
      child: Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: color,
              child:  Text(num,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700,color: Colors.white)),
            ),
            const Spacer(),
            Text('Step ${num}',style: TextStyle(color: color,fontSize: 12,fontWeight: FontWeight.w700),
            ),
          ]),);
  }
}