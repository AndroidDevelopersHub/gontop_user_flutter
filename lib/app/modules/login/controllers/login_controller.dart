import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gontop_user/app/routes/app_pages.dart';

class LoginController extends GetxController with SingleGetTickerProviderMixin{


  int selectedIndex = 0;
  TabController? tabController;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool obscureText = true;

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}


  updateIndex(int index){
    tabController?.index  = index;
    update();
  }

  passwordVisibility() {
    obscureText = !obscureText;
    update();
  }







  onTabChange(int index) async {
    selectedIndex = index;
    update();
  }

  onloginClick() {
    Get.offAllNamed(Routes.HOME);

  }

  onforgotPasswordClick() {
    Get.toNamed(Routes.OTP_VERIFICATION);
  }


}
