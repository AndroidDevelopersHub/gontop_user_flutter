import 'package:gontop_user/app/api/provider/home_provider.dart';

class HomeRepository {
  getAll() {
    return HomeProvider().getAllPost();
  }

  getId(int id) {
    return HomeProvider().getSinglePost(id);
  }
}
