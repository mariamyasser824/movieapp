import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/botton.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/textformfeild.dart';

class Forgotpassdetails extends StatelessWidget {
  const Forgotpassdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 300.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.white, fontSize: 24.sp),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 8, left: 8, top: 15, bottom: 15),
            child: Text(
              "You forgot your password? don't worry, please enter your recovery email address",
              style: TextStyle(color: const Color(0xFFCBC9D8), fontSize: 14.sp),
            ),
          ),
          const TextformfieldWidget(uppertext: "Email Address"),
          const Botton(nextscreen: "verification", text: "Submit"),
        ],
      ),
    );
  }
}
