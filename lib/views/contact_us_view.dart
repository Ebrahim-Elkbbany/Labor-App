import 'package:flutter/material.dart';
import 'package:labor/custom_widgets/custom_button.dart';
import 'package:labor/custom_widgets/custom_text_form_field.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController =TextEditingController();
    var phoneController =TextEditingController();
    var messageController =TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contact Us',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
      ),
      body:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                'We are pleased to contact you \nto hear your inquiries and opinions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffB5B5B5),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              const Text(
                'Name',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: nameController,
                type: TextInputType.name,
                label: 'Enter Your Name',
                validate: (value) {
                  if(value!.isEmpty){
                    return 'please enter your Name';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Phone',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: phoneController,
                type: TextInputType.phone,
                label: 'Enter Your Phone',
                validate: (value) {
                  if(value!.isEmpty){
                    return 'please enter your Phone';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Message',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: messageController,
                type: TextInputType.text,
               maxLines: 7,
                label: 'Enter Your Message',
                validate: (value) {
                  if(value!.isEmpty){
                    return 'please enter your message';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 53,
              ),
              CustomButton(buttonName: 'Send',height: 60, radiusCircular: 8,),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
