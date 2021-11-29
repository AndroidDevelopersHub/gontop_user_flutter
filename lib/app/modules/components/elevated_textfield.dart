
import 'package:flutter/material.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';

class CElevatedTextField extends StatelessWidget {
  TextEditingController? controller;
  TextInputType? textInputType;
  bool? obscureText;
  String? hintText;
  Icon? prefixIcon;
  double? width;
  double? height;
  Color? fillColor;


  CElevatedTextField(
      {required this.controller,
      this.textInputType,
      required this.hintText,
      this.obscureText,
      this.width,
      this.height,
      this.fillColor,
      required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 2,
      color: fillColor ?? Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.radiusMid),
      ),
      child: SizedBox(
        height: height ?? Dimens.textFieldMid,
        width: width ?? 320,
        child: TextField(

          controller: controller,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
              prefixIcon: prefixIcon ?? Icon(Icons.person),
              counterText: '',
              hintText: hintText ?? "Email or Phone Number",
              hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 14),
              contentPadding: const EdgeInsets.only(left: 15),
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(Dimens.radiusMid),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(Dimens.radiusMid),
              )

          ),
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          keyboardType: textInputType ?? TextInputType.emailAddress,
          maxLines: 1,
        ),
      ),
    );
  }
}
