import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/movie/presentation/controller/popularMovies/popularmoviescubit.dart';
import 'package:movieapp2/features/movie/presentation/controller/popularMovies/popularmoviesstate.dart';

class Popularmoviesbloc extends StatelessWidget {
  const Popularmoviesbloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Popularmoviescubit, Popularmoviesstate>(
        builder: (context, state) {
      if (state is successstate) {
        return SizedBox(
          height: 185,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "moviedetailsscreen",
                            arguments: {
                              "image":"https://image.tmdb.org/t/p/w500${state.Movies[index].posterPath}",
                              "runtime": state.Movies[index].runtime,
                              "date": state.Movies[index].releaseDate,
                              "languge": state.Movies[index].originalLanguage,
                              "title": state.Movies[index].title,
                                "overview":state.Movies[index].overview,
                                "id":state.Movies[index].id,
                                  "movie":state.Movies[index]
                            //  "gener":state.Movies[index].genres![index].name
                            });
                      },
                      child: Container(
                        width: 124.w,
                        height: 178.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://image.tmdb.org/t/p/w500${state.Movies[index].posterPath}"),
                                fit: BoxFit.fill)),
                                

                      ),
                    ));
              },
              itemCount: state.Movies.length),
        );
      } else if (state is errorstate) {
        return Center(child: Text('Error: ${state.error}'));
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
