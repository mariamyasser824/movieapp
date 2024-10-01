import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/categorys/presentation/views/widgets/categorybody.dart';

class Categoryscreen extends StatelessWidget {
  const Categoryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var text = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
        child: ScreenUtilInit(
      designSize: const Size(375, 812), // Example design size
      minTextAdapt: true,
      splitScreenMode: true,

      child: Scaffold(
        backgroundColor: const Color(0xFF06041F),
        body: Categorybody(Text: text),
      ),
    ));
  }
}
