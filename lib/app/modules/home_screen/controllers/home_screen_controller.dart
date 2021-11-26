import 'package:get/get.dart';
import 'package:gontop_user/app/api/repository/home_repository.dart';

class HomeScreenController extends GetxController {

  HomeRepository homeRepository = Get.find();

  final count = 0.obs;
  @override
  void onInit() {

    callApi();

    super.onInit();


  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;


  void callApi()async {

    print("Call Api called");

    final result = homeRepository.getAll();
    print(result);
  }
  
}
