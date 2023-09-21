import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/core/utils/assets.dart';
import 'package:labor_app/core/utils/resposive_size_config.dart';
import 'package:labor_app/core/utils/styles.dart';
import 'package:labor_app/features/select_language/presentation/views/widgets/select_lan_radio_sec.dart';

class SelectLanguageViewBody extends StatelessWidget {
  const SelectLanguageViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.height(context, 69),
            ),
            Image.asset(AssetsData.selectLanguage),
            SizedBox(
              height: SizeConfig.height(context, 64),
            ),
            Text(
              'Find Your \nHome Service',
              style: Styles.textStyle48,
            ),
            SizedBox(
              height: SizeConfig.height(context, 78),
            ),
            const SelectLanRadioSec(),
          ],
        ),
      ),
    );
  }
}
