
import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

abstract class Popularmoviesstate {}

class intialstate extends Popularmoviesstate {}

class lodingstate extends Popularmoviesstate {}

class successstate extends Popularmoviesstate {
  final List<Movie> Movies;

  successstate(this.Movies);
}

class errorstate extends Popularmoviesstate {
  final String error;

  errorstate(this.error);
}
