import 'package:get/get.dart';

class HomeScreenController extends GetxController {


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;


  // void callApi()async {
  //   final result = homeRepository?.getAll();
  //   print(result);
  // }
  
}
