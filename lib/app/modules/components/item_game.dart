import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class GameItem extends StatelessWidget {
  VoidCallback? onItemClick;

  GameItem({required this.onItemClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onItemClick,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Dimens.radiusMid),
              child: Image.network(
                "https://play-lh.googleusercontent.com/JRd05pyBH41qjgsJuWduRJpDeZG0Hnb0yjf2nWqO7VaGKL10-G5UIygxED-WNOc3pg",
                fit: BoxFit.cover,
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
      ),
    );
  }
}
