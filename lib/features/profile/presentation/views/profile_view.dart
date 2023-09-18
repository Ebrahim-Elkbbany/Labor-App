import 'package:flutter/material.dart';
import 'package:labor_app/features/profile/presentation/views/widgets/profile_view_body.dart';


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



