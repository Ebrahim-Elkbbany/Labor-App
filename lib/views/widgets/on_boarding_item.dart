import 'package:flutter/material.dart';
import 'package:labor/models/on_boarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({Key? key, required this.onBoardingModel})
      : super(key: key);
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Stack(
              alignment:Alignment.center ,
              children: [
                Image.asset(
                  'assets/images/onBoarding_vector.png',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Image.asset(
                    onBoardingModel.image,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 57,
        ),
        Text(
          onBoardingModel.text,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 34),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Text(
            onBoardingModel.subText,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                height: 1.5),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
