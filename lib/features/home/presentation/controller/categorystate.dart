import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

abstract class Categorystate{}
class intialstate extends Categorystate {}

class lodingstate extends Categorystate {}

class successstate extends Categorystate {
  final List<Movie> Movies;

  successstate(this.Movies);
}

class errorstate extends Categorystate {
  final String error;

  errorstate(this.error);
}
