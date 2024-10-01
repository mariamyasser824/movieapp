import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/core/network/getit.dart';
import 'package:movieapp2/features/categorys/presentation/views/widgets/items.dart';
import 'package:movieapp2/features/home/data/repo/home_repo_impl.dart';
import 'package:movieapp2/features/home/presentation/controller/categorycubit.dart';
import 'package:movieapp2/features/home/presentation/controller/categorystate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key, required this.query});
  final String query;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Categorycubit(getIt.get<HomeRepoImpl>())
        ..getCategorysMovies(query: query),
      child:
          BlocBuilder<Categorycubit, Categorystate>(builder: (context, state) {
        if (state is successstate) {
          return SizedBox(
            width: double.infinity,
            height: 650.h,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                // Number of columns
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
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
                            // "gener":state.Movies[index].genres![index].name
                            });
                      },  
                    child: Items(
                        image:
                            "https://image.tmdb.org/t/p/w500${state.Movies[index].posterPath}"),
                  ),
                );
              },
              itemCount: state.Movies.length, // Number of items
            ),
          );
        } else if (state is errorstate) {
          return Center(child: Text('Error: ${state.error}'));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }
}
