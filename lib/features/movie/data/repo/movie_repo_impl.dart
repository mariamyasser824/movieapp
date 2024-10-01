import 'package:dartz/dartz.dart';
import 'package:movieapp2/core/Error/error.dart';

import 'package:dio/dio.dart';
import 'package:movieapp2/features/movie/data/model/movie/movie.dart';
import 'package:movieapp2/features/movie/data/repo/movie_repo.dart';

import '../../../../core/network/api_service.dart';

class MovieRepoImpl implements MovieRepo {
    final ApiService apiService;

  MovieRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<Movie>>>featch_similar({required int id}) async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              "movie/$id/similar?api_key=8f3539281c4428ee1fcb6c04f07ac2a4");
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
      Future<Either<Failure, List<Movie>>>featch_search(
{required var query})async{    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              "search/movie?query=$query&include_adult=false&page=1&&api_key=8f3539281c4428ee1fcb6c04f07ac2a4");
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
}
