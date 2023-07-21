import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void initializeServices() {
  locator.registerLazySingleton<AppRouter>(() => AppRouter());
  locator.registerLazySingleton<Global>(() => Global());
}
