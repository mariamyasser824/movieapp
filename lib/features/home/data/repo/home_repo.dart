import 'package:dartz/dartz.dart';
import 'package:movieapp2/core/Error/error.dart';
import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Movie>>> featch_toprated_movies();
  Future<Either<Failure, List<Movie>>> featch_popular_movies();
  Future<Either<Failure, List<Movie>>> featch_upcoming_movies();
  Future<Either<Failure, List<Movie>>> featch_nowplaying_movies();
  Future<Either<Failure, List<Movie>>> fetchCategoryMovies(
      {required String query});
}
