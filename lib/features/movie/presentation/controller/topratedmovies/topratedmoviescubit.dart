import 'package:movieapp2/features/home/data/repo/home_repo.dart';
import 'package:movieapp2/features/movie/presentation/controller/topratedmovies/topratedmoviesstate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Topratedmoviescubit extends Cubit<Topratedmoviesstate> {
  Topratedmoviescubit(this.homeRepo) : super(intialstate());
  final HomeRepo homeRepo;
  Future<void> gettoprated() async {
    emit(lodingstate());
    var result = await homeRepo.featch_toprated_movies();
    result.fold((failure) {
      emit(errorstate(failure.errorMessage));
    }, (Movies) {
      emit(successstate(Movies));
    });
  }
}
