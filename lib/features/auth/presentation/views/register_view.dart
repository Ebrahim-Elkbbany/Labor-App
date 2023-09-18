import 'package:flutter/material.dart';
import 'package:labor_app/core/widgets/custom_button.dart';
import 'package:labor_app/core/widgets/custom_facebook_container.dart';
import 'package:labor_app/core/widgets/custom_google_container.dart';
import 'package:labor_app/core/widgets/custom_text_button.dart';
import 'package:labor_app/core/widgets/custom_text_form_field.dart';
import 'package:labor_app/core/widgets/navigator_push_remove_until.dart';
import 'package:labor_app/features/auth/presentation/views/login_view.dart';
import 'package:labor_app/features/layout/presentation/views/bottom_nav_view.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  GlobalKey<FormState> formKey = GlobalKey();

  var  passwordController = TextEditingController();
  var  phoneController = TextEditingController();
  var  nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: Text('Register',
                        style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.w700)),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Center(
                    child: Text(
                      'Please Enter your Phone and password \nto continue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        height:1.8,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffB5B5B5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Full Name',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    controller: nameController,
                    type: TextInputType.name,
                    label: 'Enter Your Name',
                    suffix: Icons.person,
                    validate: (value) {
                      if(value!.isEmpty){
                        return 'please enter your name';
                      }else{
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Phone',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    type: TextInputType.phone,
                    label: 'Enter Your Phone',
                    validate: (value) {
                      if(value!.isEmpty){
                        return 'please enter your phone';
                      }else{
                        return null;
                      }
                    },
                    suffix: Icons.phone,
                  ),

                  const SizedBox(height: 16),
                  const Text(
                    'Password',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    type: TextInputType.visiblePassword,
                    controller: passwordController,
                    validate: (value) {
                      if(value!.isEmpty){
                        return 'please enter your password';
                      }else{
                        return null;
                      }
                    },
                    label: 'Enter Your Password',
                    suffix: Icons.visibility_outlined,
                  ),
                  const SizedBox(height: 16),
                  CustomButton(buttonName: 'Register',radiusCircular: 8,onTap: () {
                    if(formKey.currentState!.validate()){
                      navigatorAndFinish(const LayoutView(), context);
                    }
                  },),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      'OR',
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const CustomFaceContainer(),
                  const SizedBox(height: 16,),
                  const CustomGoogleContainer(),
                  const SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Have Account ?',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      CustomTextButton(text: 'Sign in',color: Colors.black,sizeText: 16,fontWeight: FontWeight.w700,
                        onPressed:() {
                          Navigator.pop(context, MaterialPageRoute(builder: (context) => const LoginView(),));
                        },)
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
