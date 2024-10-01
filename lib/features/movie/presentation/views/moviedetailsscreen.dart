import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/movie/presentation/views/widgets/moviedetailsbody.dart';
class Moviedetailsscreen extends StatelessWidget {
  const Moviedetailsscreen({super.key});

  @override
Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    return SafeArea(
        child: ScreenUtilInit(
      designSize: const Size(375, 812), // Example design size
      minTextAdapt: true,
      splitScreenMode: true,

      child: Scaffold(
        backgroundColor: const Color(0xFF06041F),
        body:Moviedetailsbody(image: data['image'], date: data['date'], overview: data['overview'], id: data['id'], movie: data['movie'],)
      ),
    ));
  }
}
