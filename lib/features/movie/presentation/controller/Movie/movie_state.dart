import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

abstract class MovieState
{}
class intialstate extends MovieState {}

class lodingstate extends MovieState {}

class successstate extends MovieState {
  final List<Movie> Movies;

  successstate(this.Movies);
}

class errorstate extends MovieState {
  final String error;

  errorstate(this.error);
}
