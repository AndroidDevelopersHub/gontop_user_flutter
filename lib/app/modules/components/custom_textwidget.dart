import 'package:flutter/material.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

class CText extends StatelessWidget {
  String? text;
  double? textSize;
  Color? textColor;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  double? textScaleFactor;
  int? maxLines;
  TextDecoration? decoration;

  CText(
      {required this.text,
      this.textSize,
      this.textColor,
      this.fontWeight,
      this.textAlign,
      this.textScaleFactor,
      this.decoration,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      textScaleFactor: textScaleFactor,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      style: GoogleFonts.poppins(
        decoration: decoration,
        fontSize: textSize ?? Dimens.titleMid,
        color: textColor ?? CustomColors.KDarkBlackColor,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}
