import 'package:flutter/material.dart';
import 'package:labor_app/core/utils/assets.dart';
import 'package:labor_app/features/history/presentation/views/widgets/on_going_container.dart';

class OnGoingView extends StatelessWidget {
  const OnGoingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color(0xffF9FFF6),
        child: ListView(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 24.0,
          ),
          children: const [
            OnGoingContainer(
              isAccept: true,
              image: AssetsData.ontractCleaning,
              companyName: 'United Group Company',
              price: '1500',
            ),
            OnGoingContainer(
              isAccept: false,
              image: AssetsData.ontractCleaning2,
              companyName: 'Nile Company',
              price: '650',
            ),
            OnGoingContainer(
              isAccept: true,
              image: AssetsData.ontractCleaning,
              companyName: 'United Group Company',
              price: '1500',
            ),
            OnGoingContainer(
              isAccept: false,
              image: AssetsData.ontractCleaning2,
              companyName: 'Nile Company',
              price: '650',
            ),
          ],
        ),
      ),
    );
  }
}
