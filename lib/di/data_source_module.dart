import 'package:diamond_store/services/login/login_data_sources.dart';
import 'package:get_it/get_it.dart';




void initDataSourcesModule(GetIt locator) {
  locator.registerLazySingleton<LoginDataSource>(() => LoginDataSource());


}