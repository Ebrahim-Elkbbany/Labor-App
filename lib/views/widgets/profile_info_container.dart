import 'package:flutter/material.dart';
import 'package:labor/custom_widgets/custom_button.dart';
import 'package:labor/views/edit_profile_view.dart';

class ProfileInfoContainer extends StatelessWidget {
  const ProfileInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      width: 389,
      height: 218,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/profile_image.png'),
          const Text('Abdul Aziz Al-Qahtany',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
           CustomButton(buttonName: 'Edit',radiusCircular: 22,height: 32,width: 78,fontSize: 14,onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfileView(),));
          },)
        ],
      ),
    );
  }
}