import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp2/features/movie/presentation/controller/topratedmovies/topratedmoviescubit.dart';
import 'package:movieapp2/features/movie/presentation/controller/topratedmovies/topratedmoviesstate.dart';

class Topratedmoviesbloc extends StatefulWidget {
  const Topratedmoviesbloc({super.key});

  @override
  State<Topratedmoviesbloc> createState() => _TopratedmoviesblocState();
}

class _TopratedmoviesblocState extends State<Topratedmoviesbloc> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return BlocBuilder<Topratedmoviescubit, Topratedmoviesstate>(
        builder: (context, state) {
      if (state is successstate) {
        return Column(
          children: [
            CarouselSlider.builder(
              itemCount: state.Movies.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      InkWell(
                onTap: () {
                        Navigator.pushNamed(context, "moviedetailsscreen",
                            arguments: {
                              "image":"https://image.tmdb.org/t/p/w500${state.Movies[itemIndex].posterPath}",
                              "runtime": state.Movies[itemIndex].runtime,
                              "date": state.Movies[itemIndex].releaseDate,
                              "languge": state.Movies[itemIndex].originalLanguage,
                              "title": state.Movies[itemIndex].title,
                              "overview":state.Movies[itemIndex].overview,
                              "id":state.Movies[itemIndex].id,
                                "movie":state.Movies[itemIndex]
                            // "gener":state.Movies[index].genres![index].name
                            });
                      },
                child: Container(
                  width: double.infinity,
                  // height: 150.h,
                  child: Image(
                    image: NetworkImage(
                        "https://image.tmdb.org/t/p/w500${state.Movies[itemIndex].posterPath}"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              options: CarouselOptions(
                height: 250,
                viewportFraction: 1.2,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 600),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (itemIndex, reason) {
                  setState(() {
                    currentIndex = itemIndex;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: CarouselIndicator(
                cornerRadius: 50,
                width: 5.w,
                height: 5,
                activeColor: const Color(0xFFDF0C31),
                count: state.Movies.length,
                animationDuration: 300,
                index: currentIndex,
              ),
            )
          ],
        );
      } else if (state is errorstate) {
        return Center(child: Text('Error: ${state.error}'));
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
