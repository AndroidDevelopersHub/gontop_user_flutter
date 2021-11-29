import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpVerificationController extends GetxController {
  //TODO: Implement OtpVerificationController

  TextEditingController otpController = TextEditingController();

  final count = 0.obs;

  void increment() => count.value++;

  onloginClick() {}

  requestNewOtp() {}
}
