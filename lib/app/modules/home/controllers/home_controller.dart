import 'package:get/get.dart';
import 'package:gontop_user/app/modules/anouncement/views/anouncement_view.dart';
import 'package:gontop_user/app/modules/home_screen/views/home_screen_view.dart';
import 'package:gontop_user/app/modules/orders/views/orders_view.dart';
import 'package:gontop_user/app/modules/profile/views/profile_view.dart';
import 'package:gontop_user/app/modules/wallet/views/wallet_view.dart';

class HomeController extends GetxController {
  int selectedIndex = 0;

  var sceenList = [
    HomeScreenView(),
    OrdersView(),
    WalletView(),
    AnouncementView(),
    ProfileView(),
  ];

  onTabChange(int index) {
    selectedIndex = index;
    update();
  }

}
