import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp2/features/home/data/repo/home_repo.dart';
import 'package:movieapp2/features/home/presentation/controller/categorystate.dart';
class Categorycubit extends Cubit<Categorystate>{

Categorycubit(this.homeRepo) : super(intialstate());
  final HomeRepo homeRepo;
Future<void> getCategorysMovies({required String query})async{
    emit(lodingstate());
    var result = await homeRepo.fetchCategoryMovies(query: query);
    result.fold((failure) {
      emit(errorstate(failure.errorMessage));
    }, (Movies) {
      emit(successstate(Movies));
    });
  }
}
