import 'package:flutter/material.dart';
import 'package:movieapp2/core/network/getit.dart';
import 'package:movieapp2/features/authentication/presentation/views/forgetpassscreen.dart';
import 'package:movieapp2/features/authentication/presentation/views/loginscreen.dart';
import 'package:movieapp2/features/authentication/presentation/views/resetpassscreen.dart';
import 'package:movieapp2/features/authentication/presentation/views/resetsuccessscreen.dart';
import 'package:movieapp2/features/authentication/presentation/views/signupscreen.dart';
import 'package:movieapp2/features/authentication/presentation/views/verificationscreen.dart';
import 'package:movieapp2/features/categorys/presentation/views/categoryscreen.dart';
import 'package:movieapp2/features/home/data/repo/home_repo.dart';
import 'package:movieapp2/features/home/data/repo/home_repo_impl.dart';
import 'package:movieapp2/features/home/presentation/controller/categorycubit.dart';
import 'package:movieapp2/features/home/presentation/views/homescreen.dart';
import 'package:movieapp2/features/movie/data/repo/movie_repo_impl.dart';
import 'package:movieapp2/features/movie/presentation/controller/now_playingmovies/now_playingmovies_cubit.dart';
import 'package:movieapp2/features/movie/presentation/controller/popularMovies/popularmoviescubit.dart';
import 'package:movieapp2/features/movie/presentation/controller/search/searchcubit.dart';
import 'package:movieapp2/features/movie/presentation/controller/topratedmovies/topratedmoviescubit.dart';
import 'package:movieapp2/features/movie/presentation/controller/upcomingmovies/upcomingmoviesstate.dart';
import 'package:movieapp2/features/movie/presentation/controller/upcomingmovies/upcomingmoviesubit.dart';
import 'package:movieapp2/features/movie/presentation/views/moviedetailsscreen.dart';
import 'package:movieapp2/features/splash/presentation/views/splashscreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupserviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                NowPlayingmoviesCubit(getIt.get<HomeRepoImpl>())
                  ..getNowplaying()),
        BlocProvider(
            create: (context) =>
                Popularmoviescubit(getIt.get<HomeRepoImpl>())..getpopular()),
        BlocProvider(
            create: (context) =>
                Topratedmoviescubit(getIt.get<HomeRepoImpl>())..gettoprated()),
        BlocProvider(
            create: (context) =>
                Upcomingmoviescubit(getIt.get<HomeRepoImpl>())..getupcoming()),
                 BlocProvider(
        create: (context) =>
            Searchcubit(getIt.get<MovieRepoImpl>()))

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splashscreen(),
        routes: {
          'homescreen': (context) => homescreen(),
          'login': (context) => const loginscreen(),
          'signup': (context) => const signupscreen(),
          'forgetpassword': (context) => const forgetPscreen(),
          "resetpassword": (context) => const resetPscreen(),
          "resetpasssuccess": (context) => const resetsuccessscreen(),
          "verification": (context) => const verificationscreen(),
          "categoryscreen": (context) => const Categoryscreen(),
          "moviedetailsscreen":(context)=>Moviedetailsscreen()
        },
      ),
    );
  }
}
