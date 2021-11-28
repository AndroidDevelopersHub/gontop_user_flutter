import 'package:get/get.dart';

import 'package:gontop_user/app/modules/add_deposit/bindings/add_deposit_binding.dart';
import 'package:gontop_user/app/modules/add_deposit/views/add_deposit_view.dart';
import 'package:gontop_user/app/modules/category_details/bindings/category_details_binding.dart';
import 'package:gontop_user/app/modules/category_details/views/category_details_view.dart';
import 'package:gontop_user/app/modules/change_password/bindings/change_password_binding.dart';
import 'package:gontop_user/app/modules/change_password/views/change_password_view.dart';
import 'package:gontop_user/app/modules/confirm_deposit/bindings/confirm_deposit_binding.dart';
import 'package:gontop_user/app/modules/confirm_deposit/views/confirm_deposit_view.dart';
import 'package:gontop_user/app/modules/history/bindings/history_binding.dart';
import 'package:gontop_user/app/modules/history/views/history_view.dart';
import 'package:gontop_user/app/modules/home/bindings/home_binding.dart';
import 'package:gontop_user/app/modules/home/views/home_view.dart';
import 'package:gontop_user/app/modules/home_screen/bindings/home_screen_binding.dart';
import 'package:gontop_user/app/modules/home_screen/views/home_screen_view.dart';
import 'package:gontop_user/app/modules/login/bindings/login_binding.dart';
import 'package:gontop_user/app/modules/login/views/login_view.dart';
import 'package:gontop_user/app/modules/order_details/bindings/order_details_binding.dart';
import 'package:gontop_user/app/modules/order_details/views/order_details_view.dart';
import 'package:gontop_user/app/modules/orders/bindings/orders_binding.dart';
import 'package:gontop_user/app/modules/orders/views/orders_view.dart';
import 'package:gontop_user/app/modules/profile/bindings/profile_binding.dart';
import 'package:gontop_user/app/modules/profile/views/profile_view.dart';
import 'package:gontop_user/app/modules/registration/bindings/registration_binding.dart';
import 'package:gontop_user/app/modules/registration/views/registration_view.dart';
import 'package:gontop_user/app/modules/transaction/bindings/transaction_binding.dart';
import 'package:gontop_user/app/modules/transaction/views/transaction_view.dart';
import 'package:gontop_user/app/modules/transfer/bindings/transfer_binding.dart';
import 'package:gontop_user/app/modules/transfer/views/transfer_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.HOME;
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => RegistrationView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.ORDERS,
      page: () => OrdersView(),
      binding: OrdersBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_DETAILS,
      page: () => OrderDetailsView(),
      binding: OrderDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY_DETAILS,
      page: () => CategoryDetailsView(),
      binding: CategoryDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_DEPOSIT,
      page: () => AddDepositView(),
      binding: AddDepositBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_DEPOSIT,
      page: () => ConfirmDepositView(),
      binding: ConfirmDepositBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.TRANSFER,
      page: () => TransferView(),
      binding: TransferBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION,
      page: () => TransactionView(),
      binding: TransactionBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
      binding: HistoryBinding(),
    ),
  ];
}
