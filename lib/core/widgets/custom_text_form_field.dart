import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_app/constant.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.controller,
    this.isPassword = false,
    this.type,
    this.isClickable = true,
    this.onSubmit,
    this.onChange,
    this.onTap,
    this.validate,
    this.label,
    this.suffix,
    this.suffixPressed,
    this.maxLines = 1,
    this.disabledBorderColor = const Color(0xffDFDFDF),
    this.enabledBorderColor = const Color(0xffDFDFDF),
    this.focusedBorderColor = kPrimaryColor,
    this.fillColor =const Color(0xffF9FFF6),
  }) : super(key: key);

  final TextEditingController? controller;
  final TextInputType? type;
  final void Function(String)? onSubmit;
  final void Function(String)? onChange;
  final void Function()? onTap;
  final bool isPassword;
  final String? Function(String?)? validate;
  final String? label;
  final IconData? suffix;
  final void Function()? suffixPressed;
  final bool isClickable;
  final int maxLines;
  final Color disabledBorderColor;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 16.sp),
      maxLines: maxLines,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(

        filled: true,
        fillColor: fillColor,
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: disabledBorderColor,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: enabledBorderColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:  BorderSide(color: focusedBorderColor)),
        hintText: label,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,

                ),
              )
            : null,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
