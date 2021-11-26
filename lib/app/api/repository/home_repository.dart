
import 'package:get/get.dart';
import 'package:gontop_user/app/api/provider/home_provider.dart';

class HomeRepository extends GetxService{
  HomeProvider homeProvider = Get.find();


  getAll() {
    return homeProvider.getAllPost();
  }

  getId(int id) {
    return homeProvider.getSinglePost(id);
  }
}
