
import 'package:flutter/material.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';

class CTextField extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? textInputType;
  bool? obscureText;
  String? hintText;
  Icon? prefixIcon;
  double? width;
  double? height;

  CTextField(
      {required this.controller,
        required this.textInputType,
        required this.hintText,
        this.obscureText,
        this.width,
        this.height,
        required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: height ?? Dimens.textFieldNormal,
        width: width ?? 300,
        child: TextField(
          controller: controller,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
              prefixIcon: prefixIcon ?? Icon(Icons.person),
              counterText: '',
              hintText: hintText ?? "Email or Phone Number",
              hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 14),
              contentPadding: const EdgeInsets.only(left: 15),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(Dimens.radiusLarge),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(Dimens.radiusLarge),
              )),
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          keyboardType: textInputType ?? TextInputType.emailAddress,
          maxLines: 1,
        ),
      ),
    );
  }
}