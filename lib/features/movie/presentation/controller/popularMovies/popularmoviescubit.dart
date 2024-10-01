import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp2/features/home/data/repo/home_repo.dart';

import 'package:movieapp2/features/movie/presentation/controller/popularMovies/popularmoviesstate.dart';

class Popularmoviescubit extends Cubit<Popularmoviesstate> {
  Popularmoviescubit(this.homeRepo) : super(intialstate());
  final HomeRepo homeRepo;
  Future<void> getpopular() async {
    emit(lodingstate());
    var result = await homeRepo.featch_popular_movies();
    result.fold((failure) {
      emit(errorstate(failure.errorMessage));
    }, (Movies) {
      emit(successstate(Movies));
    });
  }
}
