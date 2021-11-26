
import 'package:get_it/get_it.dart';
import 'package:gontop_user/app/api/client/api_client.dart';
import 'package:gontop_user/app/api/provider/home_provider.dart';
import 'package:gontop_user/app/api/repository/home_repository.dart';

final locator = GetIt.instance;

void dependancyInjectorSetup(){
  locator.registerLazySingleton<HomeProvider>(() => HomeProvider());
  locator.registerLazySingleton<HomeRepository>(() => HomeRepository());

}