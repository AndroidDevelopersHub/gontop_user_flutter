import 'package:flutter/material.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';

class CRoundedButton extends StatelessWidget {
  double? height;
  double? width;
  VoidCallback? onClick;
  Color? backgroundColor;
  String? text;
  double? radius;

  CRoundedButton({
    required this.onClick,
    required this.text,
    this.height,
    this.width,
    this.backgroundColor,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? Dimens.textFieldNormal,
      width: width ?? 300,
      child: ElevatedButton(
          child: Text(text ?? "Button", style: TextStyle(fontSize: Dimens.title)),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  backgroundColor ?? CustomColors.KPrimaryRedColor),
              // <-- Button color
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimens.radiusLarge),
                      side: BorderSide.none))),
          onPressed: onClick),
    );
  }
}
