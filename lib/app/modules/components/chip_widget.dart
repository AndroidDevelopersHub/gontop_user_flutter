import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';

import 'custom_textwidget.dart';

class ChipWidget extends StatelessWidget {
  VoidCallback? onClick;
  Color? backgroundColor;
  Color? textColor;
  Color? strokeColor;
  String? text;
  double? textSize;
  double? verticalPadding;
  double? horizontalPadding;
  double? radius;
  double? elevation;
  Widget? widget;

  ChipWidget(
      {this.onClick,
      this.backgroundColor,
      this.textColor,
      required this.text,
      this.verticalPadding,
      this.horizontalPadding,
      this.textSize,
      this.elevation,
      this.radius,
      this.widget,
      this.strokeColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      margin: EdgeInsets.zero,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? Dimens.radiusNone),
          side: BorderSide(color: strokeColor ?? Colors.transparent)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 12,
            vertical: verticalPadding ?? 5),
        child: InkWell(
          onTap: onClick,
          child: Row(
            children: [
              widget ?? SizedBox(),
              CText(
                text: text ?? "Brand New",
                textColor: textColor,
                textSize: textSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
