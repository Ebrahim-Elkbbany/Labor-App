import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:labor/constant.dart';
import 'package:labor/custom_widgets/custom_button.dart';
import 'package:labor/custom_widgets/navigator_push_remove_until.dart';
import 'package:labor/views/login_view.dart';
import 'package:labor/views/on_boarding_view.dart';

class SelectLanguageView extends StatefulWidget {
  const SelectLanguageView({Key? key}) : super(key: key);

  @override
  State<SelectLanguageView> createState() => _SelectLanguageViewState();
}

class _SelectLanguageViewState extends State<SelectLanguageView> {
  Object? selectLanguage;
  bool showError = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset('assets/images/select_language.png'),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Find Your \nHome Service',
                style: TextStyle(
                    fontSize: 46, fontWeight: FontWeight.w700, height: 1),
              ),
              const SizedBox(
                height: 45,
              ),
              const Text(
                'Select Language',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              RadioListTile(
                activeColor: kPrimaryColor,
                contentPadding: EdgeInsetsDirectional.zero,
                controlAffinity: ListTileControlAffinity.trailing,
                title: const Text('English',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                value: 'english',
                groupValue: selectLanguage,
                onChanged: (value) {
                  setState(() {
                    selectLanguage = value;
                    showError = false;
                  });
                },
              ),
              const Divider(
                height: 0,
                thickness: 1,
              ),
              RadioListTile(
                activeColor: kPrimaryColor,
                contentPadding: EdgeInsetsDirectional.zero,
                controlAffinity: ListTileControlAffinity.trailing,
                title: const Text('Arabic',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                value: 'arabic',
                groupValue: selectLanguage,
                onChanged: (value) {
                  setState(() {
                    selectLanguage = value;
                    showError = false;
                  });
                },
              ),
              const Divider(
                height: 0,
                thickness: 1,
              ),
              if (showError==true)
                const Padding(
                  padding:  EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      'Please Select Language',
                      style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.w500),
                    ),
                  ),
                ),

              const SizedBox(
                height: 22,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'By creating an account, you agree to our ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Term and Conditions ',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      height: 1.8),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                buttonName: 'Enter',
                onTap: () {
                  if (selectLanguage == null) {
                    setState(() {
                      showError =true;

                    });
                  } else {
                    showError = false;
                    navigatorAndFinish(const OnBoardingView(), context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
