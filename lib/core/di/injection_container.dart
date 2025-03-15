import 'package:get_it/get_it.dart';
import 'package:udemy_store/core/app/app_cubit/app_cubit.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
}

Future<void> _initCore() async {
  sl.registerFactory(AppCubit.new);
}
