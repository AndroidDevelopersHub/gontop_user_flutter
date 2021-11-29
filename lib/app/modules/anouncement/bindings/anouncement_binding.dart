import 'package:get/get.dart';

import '../controllers/anouncement_controller.dart';

class AnouncementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnouncementController>(
      () => AnouncementController(),
    );
  }
}
