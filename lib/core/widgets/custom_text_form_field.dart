import 'package:flutter/material.dart';
import 'package:labor/constant.dart';

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

  @override
  Widget build(BuildContext context) {
    return TextFormField(

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
        fillColor: Color(0xffF9FFF6),
        disabledBorder:  OutlineInputBorder(
           borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xffDFDFDF),)),
        enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xffDFDFDF))),
        focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color:kPrimaryColor)),
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
