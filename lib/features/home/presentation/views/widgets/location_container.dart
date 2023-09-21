import 'package:flutter/material.dart';
import 'package:labor_app/core/utils/assets.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff4B8673),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 64,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                const CircleAvatar(
                  minRadius: 25,
                  backgroundColor: Colors.white,
                ),
                Image.asset(
                  AssetsData.subtract,
                ),
              ],
            ),
            const SizedBox(
              width: 17,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'your location',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Jiddah Alexander Language School , ALS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
