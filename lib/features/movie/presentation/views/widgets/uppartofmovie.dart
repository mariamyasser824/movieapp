import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/core/utils/constant.dart';
import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

class Uppartofmovie extends StatefulWidget {
  const Uppartofmovie(
      {super.key,
      required this.image,
      required this.date,
      required this.overview,
      required this.movie});
  final String image;
  final String date;
  final String overview;
  final Movie movie;
  @override
  State<Uppartofmovie> createState() =>
      _UppartofmovieState(date: date, image: image, overview, movie);
}

class _UppartofmovieState extends State<Uppartofmovie> {
  var color = Colors.white;
  bool check = false;
  final String image;
  final String date;
  final String overview;
  final Movie movie;

  _UppartofmovieState(this.overview, this.movie,
      {required this.image, required this.date});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375.w,
          height: 390.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.fill)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 35.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1F1D35),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                            )),
                      )),
                  InkWell(
                      onTap: () {
                        saved.add(movie);
                        if (check == true) {
                          color = Colors.white;
                        } else {
                          color = const Color(0xFFDF0C31);
                        }
                        setState(() {
                          check = !check;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 35.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1F1D35),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child:
                                Icon(Icons.star_border_outlined, color: color)),
                      )),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 300.w,
          height: 58.h,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$date",
                  style: TextStyle(color: Color(0xFFCBC9D8)),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150.w,
                    height: 37.h,
                    decoration: BoxDecoration(
                        color: Color(0xFFDF0C31),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          "Play",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 11),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  downloaded.add(movie);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150.w,
                    height: 37.h,
                    decoration: BoxDecoration(
                        color: Color(0xFF25233B),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_downward_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          "Download",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 11),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$overview",
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: TextStyle(color: Color(0xFFCBC9D8), fontSize: 12),
          ),
        ))
      ],
    );
  }
}
