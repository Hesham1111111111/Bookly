import 'package:bookely/core/network/apiserver.dart';
import 'package:bookely/featuers/home_books/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setup() {
  getIt.registerSingleton<ApiServes>(ApiServes(dio: Dio()));
  getIt.registerSingleton<HomeRepoImplImp>(
    HomeRepoImplImp(apiServes: getIt.get<ApiServes>()),
  );
}
