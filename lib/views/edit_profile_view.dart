import 'package:flutter/material.dart';
import 'package:labor/custom_widgets/custom_button.dart';
import 'package:labor/custom_widgets/custom_text_form_field.dart';
import 'package:labor/views/widgets/delete_account_button.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  GlobalKey<FormState> formKey = GlobalKey();

  var passwordController = TextEditingController();

  var phoneController = TextEditingController();

  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Edit Profile',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 42,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset('assets/images/profile_image.png'),
                        const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Full Name',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    controller: nameController,
                    type: TextInputType.name,
                    label: 'Abdul Aziz Al-Qahtany',
                    suffix: Icons.person,
                    validate: (value) {},
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'Phone',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    type: TextInputType.phone,
                    label: '5621458751',
                    validate: (value) {},
                    suffix: Icons.phone,
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'Password',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    type: TextInputType.visiblePassword,
                    controller: passwordController,
                    validate: (value) {},
                    label: '* * * * * * * * *',
                    suffix: Icons.visibility_outlined,
                  ),
                  const SizedBox(height: 70),
                  CustomButton(
                    buttonName: 'Save Changes',
                    radiusCircular: 8,
                    onTap: () {
                      if (formKey.currentState!.validate()) {}
                    },
                  ),
                  const SizedBox(height: 63),
                  const DeleteAccountButton(),
                  const SizedBox(height: 89),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


