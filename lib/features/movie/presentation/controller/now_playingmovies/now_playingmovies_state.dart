import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

abstract class NowPlayingmoviesState {}

class intialstate extends NowPlayingmoviesState {}

class lodingstate extends NowPlayingmoviesState {}

class successstate extends NowPlayingmoviesState {
  final List<Movie> Movies;

  successstate(this.Movies);
}

class errorstate extends NowPlayingmoviesState {
  final String error;

  errorstate(this.error);
}
