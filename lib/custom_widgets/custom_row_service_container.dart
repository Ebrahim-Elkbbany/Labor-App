import 'package:flutter/material.dart';

class CustomRowServiceContainer extends StatelessWidget {
  const CustomRowServiceContainer({
    super.key, required this.onPressed, required this.name, required this.subName, required this.iconName,
  });
  final void Function() onPressed;
  final String name;
  final String subName;
  final IconData  iconName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      width: double.infinity,
      height: 72,
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Icon(iconName,color: Colors.black54,size: 22,),
            const SizedBox(
              width: 18,
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.center,

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                const SizedBox(height: 5,),
                Text(subName,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black38),),
              ],
            ),
            Spacer(),
            IconButton(onPressed: onPressed, icon: const Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Colors.black54,))
          ],
        ),
      ),
    );
  }
}