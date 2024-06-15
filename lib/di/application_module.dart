import 'package:diamond_store/di/data_source_module.dart';
import 'package:diamond_store/di/repository_module.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> init() async {
  initDataSourcesModule(locator);
  initRepositoriesModule(locator);
}
