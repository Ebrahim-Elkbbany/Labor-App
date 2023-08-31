import 'package:flutter/material.dart';
import 'package:labor/custom_widgets/custom_button.dart';
import 'package:labor/custom_widgets/navigator_push_.dart';
import 'package:labor/views/add_address_view.dart';

class SelectAddressView extends StatelessWidget {
  const SelectAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Select Address',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              navigatorPush(const AddAddressView(), context);
            },
            icon: const Icon(
              Icons.add_circle_outline_outlined,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 26,
              ),
              Image.asset('assets/images/address_container_1.png'),
              const SizedBox(
                height: 15,
              ),
              Image.asset('assets/images/address_container_2.png'),
              const SizedBox(
                height: 15,
              ),
              Image.asset('assets/images/address_container_2.png'),
              const SizedBox(
                height: 230,
              ),
              const CustomButton(
                  buttonName: 'Select', radiusCircular: 8, height: 60),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
