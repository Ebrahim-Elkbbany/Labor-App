
import 'package:flutter/material.dart';
import 'package:labor/constant.dart';

class SwitchNotificationContainer extends StatefulWidget {
  const SwitchNotificationContainer({Key? key}) : super(key: key);

  @override
  State<SwitchNotificationContainer> createState() => _SwitchNotificationContainerState();
}

class _SwitchNotificationContainerState extends State<SwitchNotificationContainer> {
  bool notify =false;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      width: double.infinity,
      height: 72,
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.notifications,color: Colors.black54,size: 22,),
            const SizedBox(
              width: 18,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Push Notification',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                Text('For daily update and others',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black38),),
              ],
            ),
            const Spacer(),
            Transform.scale(
              scale: 1.2,
              child: Switch(
                activeTrackColor: kPrimaryColor,
                activeColor:Colors.white,
                value: notify, onChanged: (value) {
                setState(() {
                  notify =value;
                });
              },),
            ),
          ],
        ),
      ),
    );
  }
}
