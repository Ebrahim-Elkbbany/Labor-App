import 'package:flutter/material.dart';
import 'package:labor/custom_widgets/custom_button.dart';
import 'package:labor/custom_widgets/custom_text_form_field.dart';
import 'package:labor/views/widgets/location_container.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cityController = TextEditingController();
    var regionController = TextEditingController();
    var streetController = TextEditingController();
    var buildingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Address',
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
              const SizedBox(
                height: 32,
              ),
              Image.asset('assets/images/add_address.png'),
              const SizedBox(
                height: 32,
              ),
              const Text(
                'City',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: cityController,
                type: TextInputType.name,
                label: 'Add Your City ',
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your city';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 17,
              ),
              const Text(
                'Region',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: regionController,
                type: TextInputType.name,
                label: 'Add Your Region',
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your region';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 17,
              ),
              const Text(
                'Street',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: streetController,
                type: TextInputType.name,
                label: 'Add Your Street',
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your street';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 17,
              ),
              const Text(
                'Building',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              CustomTextFormField(
                controller: buildingController,
                type: TextInputType.datetime,
                label: 'Add Your Building',
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your building';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 50),
              const CustomButton(
                buttonName: 'Add',
                height: 60,
                radiusCircular: 8,
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
