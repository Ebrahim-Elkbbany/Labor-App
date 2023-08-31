import 'package:flutter/material.dart';
import 'package:labor/custom_widgets/navigator_push_.dart';
import 'package:labor/views/contact_us_view.dart';
import 'package:labor/views/widgets/profile_view_body.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF9FFF6),
      appBar: AppBar(

        centerTitle: true,
        title: const Text('Profile',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
      ),
      body: const ProfileViewBody(),
    );

  }
}



