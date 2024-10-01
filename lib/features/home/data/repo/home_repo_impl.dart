import 'package:dartz/dartz.dart';
import 'package:movieapp2/core/Error/error.dart';
import 'package:movieapp2/core/network/api_service.dart';
import 'package:movieapp2/features/home/data/repo/home_repo.dart';

import 'package:dio/dio.dart';
import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Movie>>> featch_nowplaying_movies() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              "movie/now_playing?language=en-US&page=3&api_key=8f3539281c4428ee1fcb6c04f07ac2a4");
      List<Movie> movies = [];
      for (var i in data["results"]) {
        movies.add(Movie.fromJson(i));
      }
      return Right(movies);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> featch_popular_movies() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              "movie/popular?language=en-US&page=1&api_key=8f3539281c4428ee1fcb6c04f07ac2a4");
      List<Movie> movies = [];
      for (var i in data["results"]) {
        movies.add(Movie.fromJson(i));
      }
      return Right(movies);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> featch_toprated_movies() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              "movie/top_rated?language=en-US&page=1&api_key=8f3539281c4428ee1fcb6c04f07ac2a4");
      List<Movie> movies = [];
      for (var i in data["results"]) {
        movies.add(Movie.fromJson(i));
      }
      return Right(movies);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> featch_upcoming_movies() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              "movie/upcoming?language=en-US&page=1&api_key=8f3539281c4428ee1fcb6c04f07ac2a4");
      List<Movie> movies = [];
      for (var i in data["results"]) {
        movies.add(Movie.fromJson(i));
      }
      return Right(movies);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
   @override
  Future<Either<Failure, List<Movie>>> fetchCategoryMovies({required String query}) async{
    try {
      var data = await apiService.get(endPoint: 'search/movie?query=$query&include_adult=false&page=1&api_key=f730220a66b686080a77f5f1b3557f89');
      List<Movie> movies = [];
      for(var i in data['results']){
        movies.add(Movie.fromJson(i));
      }
      return Right(movies);
    }catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioException(e));
      }
      else{
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
