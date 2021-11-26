import 'package:get/get.dart';
import 'package:dio/dio.dart' as d;
import 'package:gontop_user/app/api/client/api_client.dart';
import 'package:gontop_user/app/utils/helper/view_helper.dart';


class HomeProvider extends GetxService{
  ApiClient apiClient = Get.find();

  getAllPost() async {
    try {
      final result = await apiClient.request("todos", Method.GET);
      return result;
    } on Exception catch (e) {
      showMessageSnackbar(e.toString());
    }
  }

  getSinglePost(int id) {

  }
}
