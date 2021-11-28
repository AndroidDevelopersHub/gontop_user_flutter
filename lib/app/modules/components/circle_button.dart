import 'package:flutter/material.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';

class CircleButton extends StatelessWidget {
  Widget? icon;
  VoidCallback? onClick;
  double? width;
  Color? backgroundColor;
  Color? iconColor;

  CircleButton(
      {required this.icon,
      required this.onClick,
      this.width,
      this.backgroundColor,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 50,
      child: ElevatedButton(
        onPressed: onClick,
        child: icon,
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(0),
          primary: backgroundColor ?? CustomColors.KPrimaryBlueColor, // <-- Button color
          onPrimary: iconColor ?? CustomColors.KPhoneBackground, // <-- Splash color
        ),
      ),
    );
  }
}
