
import 'package:get_it/get_it.dart';
import 'package:mandopy/core/app_theme/app_colors.dart';

final sl = GetIt.instance;
class ServicesLocator{

  void init(){
    /// AppColors
    sl.registerLazySingleton(() => AppColors());
  }
}