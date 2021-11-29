import 'package:get/get.dart';

class ProductListController extends GetxController {

  String? imageUrl;


  @override
  void onReady() {


    imageUrl = Get.arguments['image'];
    update();

    super.onReady();
  }





}
