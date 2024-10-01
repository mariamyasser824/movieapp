import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/splash/presentation/views/widgets/splashscreenbody.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: Scaffold(
            backgroundColor: Color(0xFFDF0C31),
            body: Center(child: splashbody())),
      ),
    );
  }
}
