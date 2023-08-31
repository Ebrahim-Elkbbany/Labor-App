
import 'package:flutter/material.dart';

class LogoutContainer extends StatelessWidget {
  const LogoutContainer({Key? key}) : super(key: key);

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
            const Icon(Icons.logout,color: Colors.black54,size: 22,),
            const SizedBox(
              width: 18,
            ),
            const Text('Logout',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
            const Spacer(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Colors.black54,))
          ],
        ),
      ),
    );
  }
}
