import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp2/features/home/presentation/views/widgets/lastwatcheditem.dart';
import 'package:movieapp2/features/movie/presentation/controller/now_playingmovies/now_playingmovies_cubit.dart';
import 'package:movieapp2/features/movie/presentation/controller/now_playingmovies/now_playingmovies_state.dart';

class Nowplayingmoviesbloc extends StatelessWidget {
  const Nowplayingmoviesbloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NowPlayingmoviesCubit, NowPlayingmoviesState>(
        builder: (context, state) {
      if (state is successstate) {
          return SizedBox(
      height: 175,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  InkWell(
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
              child: Padding(
                  padding: EdgeInsets.all(8.0), child: Lastwatcheditem(image:"https://image.tmdb.org/t/p/w500${state.Movies[index].posterPath}", title:"${state.Movies[index].title} ", date: "${state.Movies[index].releaseDate} ")
                  ),
            );
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
