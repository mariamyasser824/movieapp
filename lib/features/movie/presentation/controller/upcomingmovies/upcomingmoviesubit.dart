import 'package:movieapp2/features/home/data/repo/home_repo.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp2/features/movie/presentation/controller/upcomingmovies/upcomingmoviesstate.dart';

class Upcomingmoviescubit extends Cubit<Upcomingmoviesstate> {
  Upcomingmoviescubit(this.homeRepo) : super(intialstate());
  final HomeRepo homeRepo;
  Future<void> getupcoming() async {
    emit(lodingstate());
    var result = await homeRepo.featch_upcoming_movies();
    result.fold((failure) {
      emit(errorstate(failure.errorMessage));
    }, (Movies) {
      emit(successstate(Movies));
    });
  }
}
