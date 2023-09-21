import 'package:flutter/material.dart';
import 'package:labor_app/features/auth/presentation/views/widgets/register_view_body.dart';


class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: RegisterViewBody(),
    );
  }
}

