import 'package:flutter/material.dart';
import 'package:movieapp2/features/movie/data/model/movie/movie.dart';
import 'package:movieapp2/features/movie/presentation/views/widgets/downpartof%20movie.dart';
import 'package:movieapp2/features/movie/presentation/views/widgets/uppartofmovie.dart';

class Moviedetailsbody extends StatefulWidget {
  const Moviedetailsbody(
      {super.key,
      required this.image,
      required this.date,
      required this.overview, required this.id, required this.movie});
  final String image;
  final String date;
  final String overview;
    final int id;
      final Movie movie;
  @override
  State<Moviedetailsbody> createState() =>
      _MoviedetailsbodyState(date, overview,id,movie, image: image);
}

class _MoviedetailsbodyState extends State<Moviedetailsbody> {
  @override
  final String image;
  final String date;
  final String overview;
  final int id;
  final Movie   movie;

  _MoviedetailsbodyState(this.date, this.overview, this.id, this.movie, {required this.image});
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Uppartofmovie(
            image: image,
            date: date,
            overview: overview, movie:movie ,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        SliverToBoxAdapter(
          child: Downpartofmovie(id: id),
        )
      ],
    );
  }
}
