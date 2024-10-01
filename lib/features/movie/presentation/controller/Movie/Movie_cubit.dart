import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp2/features/movie/data/repo/movie_repo.dart';
import 'package:movieapp2/features/movie/presentation/controller/Movie/movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit(this.movieRepo) : super(intialstate());
  final MovieRepo movieRepo;
  Future<void> getSimalermovie({required int id}) async {
    emit(lodingstate());
      var result = await movieRepo.featch_similar(id: id) ;
    result.fold((failure) {
      emit(errorstate(failure.errorMessage));
    }, (Movies) {
      emit(successstate(Movies));
    });
  }
}
