import 'package:flutter/material.dart';

class CustomFaceContainer extends StatelessWidget {
  const CustomFaceContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:Color(0xffF9FFF6),borderRadius: BorderRadius.circular(8),border: Border.all(color: Color(0xffDFDFDF)) ),
      height: 55,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          Image.asset('assets/images/face.png'),
          SizedBox(width: 12,),
          Text(
            'Facebook',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),

        ],
      ),
    );
  }
}
