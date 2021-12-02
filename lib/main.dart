import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gontop_user/app/api/provider/home_provider.dart';
import 'package:gontop_user/app/api/repository/home_repository.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/api/client/api_client.dart';
import 'app/di/injector.dart';
import 'app/routes/app_pages.dart';
import 'app/utils/helper/utility.dart';
import 'app/utils/themes/colors.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync<ApiClient>(() => ApiClient().init());
  await Get.putAsync<HomeProvider>(() async => HomeProvider());
  await Get.putAsync<HomeRepository>(() async => HomeRepository());


  //get_it injector class call if needed
  //dependancyInjectorSetup();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: createMaterialColor(CustomColors.KPrimaryRedColor),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      title: "Gontop",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.rightToLeft,
    );
  }
}
