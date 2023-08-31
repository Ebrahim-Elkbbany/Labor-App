
import 'package:flutter/material.dart';
import 'package:labor/custom_widgets/custom_button.dart';
import 'package:labor/custom_widgets/custom_text_form_field.dart';

class AddCardView extends StatelessWidget {
  const AddCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cardNameController =TextEditingController();
    var cardTypeController =TextEditingController();
    var cardNumController =TextEditingController();
    var expDateController =TextEditingController();
    var cvvController =TextEditingController();
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Card',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              const Text(
                'Card Name',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: cardNameController,
                type: TextInputType.name,
                label: 'Enter Your Card Name',
                validate: (value) {
                  if(value!.isEmpty){
                    return 'please enter your Card Name';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 17,),
              const Text(
                'Card Type',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: cardTypeController,
                type: TextInputType.name,
                label: 'Enter Your Card Type',
                validate: (value) {
                  if(value!.isEmpty){
                    return 'please enter your Card Type';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 17,),
              const Text(
                'Card Num',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: cardNumController,
                type: TextInputType.number,
                label: '9988',
                validate: (value) {
                  if(value!.isEmpty){
                    return 'please enter your Card Num';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 17,),
              const Text(
                'Exp Date',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: expDateController,
                type: TextInputType.datetime,
                label: '01/25',
                validate: (value) {
                  if(value!.isEmpty){
                    return 'please enter your Exp Date';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 17,),
              const Text(
                'Cvv',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: cvvController,
                type: TextInputType.number,
                label: '999',
                validate: (value) {
                  if(value!.isEmpty){
                    return 'please enter your Cvv';
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 32),
              const CustomButton(buttonName: 'Save',height: 60,radiusCircular: 8,),
              const SizedBox(height: 32),

            ],
          ),
        ),
      ),
    );
  }
}
