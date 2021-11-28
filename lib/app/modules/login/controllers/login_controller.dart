import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with SingleGetTickerProviderMixin{


  int selectedIndex = 0;
  TabController? tabController;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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

  onloginClick() {}

  onforgotPasswordClick() {}


}
