import "package:flutter/material.dart";
import "package:movieapp2/features/home/presentation/views/widgets/blocbuilders/nowplayingmoviesbloc.dart";
import "package:movieapp2/features/home/presentation/views/widgets/blocbuilders/popularmoviesbloc.dart";

import "package:movieapp2/features/home/presentation/views/widgets/blocbuilders/topratedmoviesbloc.dart";
import "package:movieapp2/features/home/presentation/views/widgets/blocbuilders/upcomingmoviesbloc.dart";
import "package:movieapp2/features/home/presentation/views/widgets/catigorybutton.dart";

import "package:movieapp2/features/home/presentation/views/widgets/latestmovieslist.dart";
import "package:movieapp2/features/home/presentation/views/widgets/listviewcategory.dart";
import "package:movieapp2/features/home/presentation/views/widgets/mostpopularlist.dart";

class Homebody extends StatelessWidget {
  Homebody({super.key});
  List catigorylist = ["All", "Action", "Comedy", "Romance"];

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Topratedmoviesbloc()) ,),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Last watched",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Nowplayingmoviesbloc(),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Catagories",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Listviewcategory(),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Most Popular",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      InkWell(
                          child: Text(
                        "See all",
                        style: TextStyle(color: Colors.white, fontSize: 9),
                      )),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Popularmoviesbloc(),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Latest Movies",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      InkWell(
                          child: Text(
                        "See all",
                        style: TextStyle(color: Colors.white, fontSize: 9),
                      )),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Upcomingmoviesbloc(),
              ),
            ],
          )

    ;
  }
}
