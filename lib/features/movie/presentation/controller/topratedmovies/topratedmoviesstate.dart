

import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

abstract class Topratedmoviesstate {}

class intialstate extends Topratedmoviesstate {}

class lodingstate extends Topratedmoviesstate {}

class successstate extends Topratedmoviesstate {
  final List<Movie> Movies;

  successstate(this.Movies);
}

class errorstate extends Topratedmoviesstate {
  final String error;

  errorstate(this.error);
}
