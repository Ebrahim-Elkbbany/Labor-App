
import 'package:flutter/material.dart';
class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffFFE5E5),
            borderRadius: BorderRadius.circular(16),
          ),
          height: 58,
          width: 180,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.delete_outlined,size: 24,color: Color(0xffF04545),),
              Text(
                'Delete Account',
                style:  TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}