import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp2/features/movie/data/repo/movie_repo.dart';

import 'package:movieapp2/features/movie/presentation/controller/search/searchstate.dart';

class Searchcubit extends Cubit<Searchstate> {
  Searchcubit(this.movieRepo) : super(intialstate());
  final MovieRepo movieRepo;
  Future<void> getSearch({required  var query}) async {
    emit(lodingstate());
      var result = await movieRepo.featch_search(query: query) ;
    result.fold((failure) {
      emit(errorstate(failure.errorMessage));
    }, (Movies) {
      emit(successstate(Movies));
    });
  }
}
