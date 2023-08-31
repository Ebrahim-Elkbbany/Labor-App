import 'package:flutter/material.dart';
import 'package:labor/custom_widgets/custom_row_service_container.dart';
import 'package:labor/custom_widgets/navigator_push_.dart';
import 'package:labor/views/contact_us_view.dart';
import 'package:labor/views/payment_view.dart';
import 'package:labor/views/select_address_view.dart';
import 'package:labor/views/widgets/logout_container.dart';
import 'package:labor/views/widgets/profile_info_container.dart';
import 'package:labor/views/widgets/switch_notification_container.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            const ProfileInfoContainer(),
            const SizedBox(
              height: 29,
            ),
            CustomRowServiceContainer(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const PaymentView(),));
                },
                name: 'Payment Methods',
                subName: 'Add your credit & debit cards',
                iconName: Icons.credit_card_outlined),
            const SizedBox(
              height: 11,
            ),
            CustomRowServiceContainer(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SelectAddressView(),));
                },
                name: 'Location',
                subName: 'Add your Home Location ',
                iconName: Icons.location_on_rounded),
            const SizedBox(
              height: 11,
            ),
            const   SwitchNotificationContainer(),
            const SizedBox(
              height: 11,
            ),
            CustomRowServiceContainer(
                onPressed: () {
                  navigatorPush(const ContactUsView(), context);
                },
                name: 'Contact Us',
                subName: 'For more information',
                iconName: Icons.phone_in_talk),
            const SizedBox(
              height: 11,
            ),
            const LogoutContainer(),
            const SizedBox(
              height: 62,
            ),
          ],
        ),
      ),
    );
  }
}