import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

abstract class Searchstate
{}
class intialstate extends Searchstate {}

class lodingstate extends Searchstate {}

class successstate extends Searchstate {
  final List<Movie> Movies;

  successstate(this.Movies);
}

class errorstate extends Searchstate {
  final String error;

  errorstate(this.error);
}
