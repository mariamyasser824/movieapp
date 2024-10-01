import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/core/network/getit.dart';

import 'package:movieapp2/features/movie/data/repo/movie_repo_impl.dart';

import 'package:movieapp2/features/movie/presentation/controller/search/searchcubit.dart';
import 'package:movieapp2/features/movie/presentation/controller/search/searchstate.dart';
import 'package:movieapp2/features/movie/presentation/views/widgets/item.dart';

class Searchblock extends StatelessWidget {
  const Searchblock({super.key,});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<Searchcubit, Searchstate>(builder: (context, state) {
          if (state is successstate) {
            if (state.Movies.isEmpty) {
              return Center(child: Text('No results found'));
            } else {
              return  SizedBox(
                height: 600.h,
                child: ListView.builder(
                
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
                            padding: EdgeInsets.all(8.0), child: Item(image:"https://image.tmdb.org/t/p/w500${state.Movies[index].posterPath}", title:"${state.Movies[index].title} ", date: "${state.Movies[index].releaseDate} ")
                            ),
                      );
                    },
                    itemCount: state.Movies.length),
              );
            }
          } else if (state is errorstate) {
            return Center(child: Text('Error: ${state.error}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
