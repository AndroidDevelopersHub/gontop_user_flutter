import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gontop_user/app/modules/components/custom_textfield.dart';
import 'package:gontop_user/app/modules/components/rounded_button.dart';
import 'package:gontop_user/app/utils/helper/utility.dart';
import 'package:gontop_user/app/utils/themes/colors.dart';
import 'package:gontop_user/app/utils/themes/dimens.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        builder: (controller) => Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
              ),
            ),
            body: Column(
              children: [
                Card(
                  elevation: 5,
                  shadowColor: Colors.red.withOpacity(.5),
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 120,
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 110,
                          width: 110,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TabBar(
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.black,
                        controller: controller.tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: CustomColors.KPrimaryRedColor,
                        labelStyle: TextStyle(fontSize: Dimens.titleLarge),
                        tabs: [
                          Tab(
                            text: 'Login',
                          ),
                          Tab(
                            text: 'Signup',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: TabBarView(
                      children: [
                        Column(
                          children: [

                            Expanded(
                              child: Container(
                                width: 320,
                                child: ListView(
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  children: [

                                    SizedBox(height: 10),

                                    CTextField(
                                      controller: controller.emailController,
                                      hintText: 'Email or Phone Number',
                                      textInputType: TextInputType.text,
                                      prefixIcon: Icon(Icons.person),
                                    ),
                                    CTextField(
                                      controller: controller.passwordController,
                                      obscureText: true,
                                      hintText: 'Password',
                                      textInputType: TextInputType.text,
                                      prefixIcon: Icon(Icons.lock),
                                    ),
                                    SizedBox(height: 15),
                                    CRoundedButton(
                                      text: 'LOG IN',
                                      onClick: () => controller.onloginClick(),
                                    ),
                                    SizedBox(height: 10),
                                    SizedBox(
                                      width: 300,
                                      child: InkWell(
                                        onTap: () =>
                                            controller.onforgotPasswordClick(),
                                        child: Text(
                                          "Forgot Password?",
                                          textAlign: TextAlign.right,
                                          style: GoogleFonts.poppins(
                                              fontSize: Dimens.titleMid,
                                              color:
                                                  CustomColors.KPrimaryRedColor,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 20),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: InkWell(
                                onTap: () => controller.updateIndex(1),
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
                                            color:
                                                CustomColors.KPrimaryRedColor,
                                            fontWeight: FontWeight.w700,
                                          )),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: 320,
                                child: ListView(
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  children: [
                                    CTextField(
                                      controller: controller.usernameController,
                                      hintText: 'User Name',
                                      textInputType: TextInputType.text,
                                      prefixIcon: Icon(Icons.person),
                                    ),
                                    CTextField(
                                      controller: controller.emailController,
                                      hintText: 'Email Address',
                                      textInputType: TextInputType.emailAddress,
                                      prefixIcon: Icon(Icons.mail),
                                    ),
                                    CTextField(
                                      controller: controller.numberController,
                                      hintText: 'Phone Number',
                                      textInputType: TextInputType.number,
                                      prefixIcon: Icon(Icons.call),
                                    ),
                                    CTextField(
                                      controller: controller.passwordController,
                                      obscureText: true,
                                      hintText: 'Password',
                                      textInputType: TextInputType.text,
                                      prefixIcon: Icon(Icons.lock),
                                    ),
                                    CTextField(
                                      controller:
                                          controller.confirmPasswordController,
                                      obscureText: true,
                                      hintText: 'Confirm Password',
                                      textInputType: TextInputType.text,
                                      prefixIcon: Icon(Icons.lock),
                                    ),
                                    SizedBox(height: 15),
                                    CRoundedButton(
                                      text: 'SIGN UP',
                                      onClick: () => controller.onloginClick(),
                                    ),

                                    SizedBox(height: 20),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: InkWell(
                                onTap: () => controller.updateIndex(0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Already have an account? ",
                                          style: GoogleFonts.poppins(
                                            fontSize: Dimens.titleMid,
                                            color: CustomColors.KLiteBlackColor,
                                          )),
                                      TextSpan(
                                          text: ' Login now!',
                                          style: GoogleFonts.poppins(
                                            fontSize: Dimens.titleMid,
                                            color:
                                                CustomColors.KPrimaryRedColor,
                                            fontWeight: FontWeight.w700,
                                          )),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      controller: controller.tabController,
                    ),
                  ),
                ),
              ],
            )));
  }
}
