import 'package:diamond_store/services/login/login_respository.dart';
import 'package:get_it/get_it.dart';

void initRepositoriesModule(GetIt locator) {
  locator
      .registerLazySingleton<LoginRepository>(() => LoginRepository(locator()));

}
