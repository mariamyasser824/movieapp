import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/resetpass_successwidgets/resetpasssuccessdetails.dart';

class resetsuccessscreen extends StatelessWidget {
  const resetsuccessscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: Scaffold(
          backgroundColor: Color(0xFF06041F),
          body: Center(child: Resetpasssuccessdetails()),
        ),
      ),
    );
  }
}
