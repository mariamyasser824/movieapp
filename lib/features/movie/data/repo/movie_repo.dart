
import 'package:dartz/dartz.dart';
import 'package:movieapp2/core/Error/error.dart';
import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

abstract class MovieRepo{
  Future<Either<Failure, List<Movie>>>featch_similar(
    {required int id}
  );
    Future<Either<Failure, List<Movie>>>featch_search(
{required var query});
  

}