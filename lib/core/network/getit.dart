import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:movieapp2/core/network/api_service.dart';
import 'package:movieapp2/features/home/data/repo/home_repo_impl.dart';
import 'package:movieapp2/features/movie/data/repo/movie_repo_impl.dart';

final GetIt getIt = GetIt.instance;

void setupserviceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
  getIt.registerSingleton<MovieRepoImpl>(
    MovieRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
