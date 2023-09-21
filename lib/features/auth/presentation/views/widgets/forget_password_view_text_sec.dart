import 'package:flutter/material.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';

class ForgetPasswordViewTextSec extends StatelessWidget {
  const ForgetPasswordViewTextSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Center(
         child: Text(
           'Forget Password',
           style: Styles.textStyle28,
         ),
       ),
       SizedBox(
         height: SizeConfig.height(context, 18),
       ),
       Center(
         child: Text(
           'Enter your Phone Number \nto reset password.',
           textAlign: TextAlign.center,
           style: Styles.textStyle14.copyWith(
             color: const Color(0xffB5B5B5),
             height: 1.8,
           ),
         ),
       ),
     ],
    );
  }
}
