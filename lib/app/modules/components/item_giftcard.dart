import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gontop_user/app/utils/helper/constants.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class GiftCardItem extends StatelessWidget {
  Function(String) onItemClick;

  int? index;
  GiftCardItem({required this.onItemClick, required this.index});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> onItemClick(cardList[index! % 4]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.radiusMid),
            child: Image.network(
              cardList[index! % 4],
              height: 110,
              width: 110,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "PUBG",
            style: GoogleFonts.poppins(
                fontSize: Dimens.title,
                color: CustomColors.KDarkBlackColor,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
