import 'package:get/get.dart';
import 'package:gontop_user/app/modules/anouncement/controllers/anouncement_controller.dart';
import 'package:gontop_user/app/modules/home_screen/controllers/home_screen_controller.dart';
import 'package:gontop_user/app/modules/orders/controllers/orders_controller.dart';
import 'package:gontop_user/app/modules/profile/controllers/profile_controller.dart';
import 'package:gontop_user/app/modules/wallet/controllers/wallet_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HomeScreenController>(
      () => HomeScreenController(),
    );
    Get.lazyPut<OrdersController>(
      () => OrdersController(),
    );
    Get.lazyPut<WalletController>(
      () => WalletController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<AnouncementController>(
      () => AnouncementController(),
    );
  }
}
