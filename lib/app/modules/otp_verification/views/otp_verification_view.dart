import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gontop_user/app/modules/components/custom_textfield.dart';
import 'package:gontop_user/app/modules/components/rounded_button.dart';
import 'package:gontop_user/app/utils/helper/utility.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/otp_verification_controller.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpVerificationController>(
        builder: (controller) => Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              iconTheme: IconThemeData(color: CustomColors.KPrimaryRedColor),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: Column(
              children: [
                Container(
                  width: getMaxWidth(context),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.red.withOpacity(.5),
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: 110,
                            width: 110,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CTextField(
                  controller: controller.otpController,
                  hintText: 'Enter OTP',
                  textInputType: TextInputType.text,
                  prefixIcon: Icon(Icons.lock),
                ),
                SizedBox(height: 15),
                CRoundedButton(
                  text: 'Verify'.toUpperCase(),
                  onClick: () => controller.onloginClick(),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: InkWell(
                    onTap: () => controller.requestNewOtp(),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: "Don't have account? ",
                              style: GoogleFonts.poppins(
                                fontSize: Dimens.titleMid,
                                color: CustomColors.KLiteBlackColor,
                              )),
                          TextSpan(
                              text: ' Create new now!',
                              style: GoogleFonts.poppins(
                                fontSize: Dimens.titleMid,
                                color: CustomColors.KPrimaryRedColor,
                                fontWeight: FontWeight.w700,
                              )),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )));
  }
}
