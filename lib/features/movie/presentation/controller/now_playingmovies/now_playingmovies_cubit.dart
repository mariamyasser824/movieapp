import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp2/features/home/data/repo/home_repo.dart';
import 'package:movieapp2/features/movie/presentation/controller/now_playingmovies/now_playingmovies_state.dart';

class NowPlayingmoviesCubit extends Cubit<NowPlayingmoviesState> {
  NowPlayingmoviesCubit(this.homeRepo) : super(intialstate());
  final HomeRepo homeRepo;
  Future<void> getNowplaying() async {
    emit(lodingstate());
    var result = await homeRepo.featch_nowplaying_movies();
    result.fold((failure) {
      emit(errorstate(failure.errorMessage));
    }, (Movies) {
      emit(successstate(Movies));
    });
  }
}
