import 'package:flutter/material.dart';
import 'package:labor/constant.dart';
import 'package:labor/custom_widgets/custom_button.dart';

import 'package:labor/views/widgets/complete_payment_button.dart';
class OnGoingContainer extends StatelessWidget {
  const OnGoingContainer({
    super.key, required this.isAccept, required this.image, required this.companyName, required this.price,
  });
  final bool isAccept;
  final String image;
  final String companyName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 31),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15.0, vertical: 17),
          child: Column(
            children: [
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'contract cleaning',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      Text(
                        '25ds458126fs5dha',
                        style: TextStyle(
                          color: Color(0xffB5B5B5),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CustomButton(
                      buttonName: isAccept ==true? 'Accept': 'In Review',
                      color: isAccept ==true ? kPrimaryColor: const Color(0xffB5B5B5),
                      width: 80,
                      height: 30,
                      fontSize: 12),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Divider(
                  thickness: 0.2,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                        image),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          companyName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffFDCF2D),
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFDCF2D),
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFDCF2D),
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFDCF2D),
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFDCF2D),
                              size: 15,
                            ),
                          ],
                        ),
                      ]),
                  const Spacer(),
                  const Text(
                    '22/7/2022',
                    style: TextStyle(
                      color: Color(0xffB5B5B5),
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Divider(
                  thickness: 0.2,
                ),
              ),
               Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '1 Filipino worker under contract',
                    style: TextStyle(
                      color: Color(0xffB5B5B5),
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  const Spacer(),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Price',
                          style: TextStyle(
                            color: Color(0xffB5B5B5),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ]),
                ],
              ),
              if(isAccept ==true)
                const CompletePaymentButton(),
            ],
          ),
        ),
      ),
    );
  }
}


