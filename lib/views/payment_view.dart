import 'package:flutter/material.dart';
import 'package:labor/custom_widgets/custom_button.dart';
import 'package:labor/custom_widgets/navigator_push_.dart';
import 'package:labor/views/add_card_view.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FFF6),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Payment',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 37,
            ),
            Image.asset('assets/images/card_surface.png'),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/card_surface.png'),
            const Spacer(),
            CustomButton(
              buttonName: '+ Add Card',
              height: 60,
              radiusCircular: 8,
              fontSize: 18,
              onTap: () => navigatorPush(const AddCardView(), context),
            ),
            const SizedBox(
              height: 27,
            ),
          ],
        ),
      ),
    );
  }
}
