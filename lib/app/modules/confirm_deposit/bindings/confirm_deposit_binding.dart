import 'package:get/get.dart';

import '../controllers/confirm_deposit_controller.dart';

class ConfirmDepositBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmDepositController>(
      () => ConfirmDepositController(),
    );
  }
}
