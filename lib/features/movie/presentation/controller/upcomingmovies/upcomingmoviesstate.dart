
import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

abstract class Upcomingmoviesstate {}

class intialstate extends Upcomingmoviesstate {}

class lodingstate extends Upcomingmoviesstate {}

class successstate extends Upcomingmoviesstate {
  final List<Movie> Movies;

  successstate(this.Movies);
}

class errorstate extends Upcomingmoviesstate {
  final String error;

  errorstate(this.error);
}
