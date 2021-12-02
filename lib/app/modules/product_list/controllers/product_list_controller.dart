import 'package:get/get.dart';

class ProductListController extends GetxController {
  String? imageUrl;

  List<String> categoryItems = ["PUBG MOBILE UC", "PUBG MOBILE PRIME PLUS"];
  String? selectedCategory;
  int? selectedPackage;

  @override
  void onReady() {
    imageUrl = Get.arguments['image'];
    update();

    super.onReady();
  }

  onCategorySelect(String? category) {
    selectedCategory = category;
    update();
  }

  onSelectPackage(int index) {
    selectedPackage = index;
    update();
  }
}
