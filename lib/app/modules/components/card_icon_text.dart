import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gontop_user/app/modules/components/custom_textwidget.dart';
import 'package:gontop_user/app/utils/helper/constants.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class CardIconText extends StatelessWidget {
  Function(String) onItemClick;
  String? text;

  int? index;
  CardIconText({required this.onItemClick, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> onItemClick( gameList[index! % 10]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.radiusMid),
            child: Image.network(
              gameList[index! % 10],
              height: 110,
              width: 110,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(height: 5),
         CText(text: text)
        ],
      ),
    );
  }
}
