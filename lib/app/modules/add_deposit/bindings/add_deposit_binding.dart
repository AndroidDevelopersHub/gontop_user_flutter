import 'package:get/get.dart';

import '../controllers/add_deposit_controller.dart';

class AddDepositBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddDepositController>(
      () => AddDepositController(),
    );
  }
}
