import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/botton.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/passwordwidget.dart';

class Resetpassdetails extends StatelessWidget {
  const Resetpassdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 350.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Reset Password?",
              style: TextStyle(color: Colors.white, fontSize: 24.sp),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 8, left: 8, top: 15, bottom: 15),
            child: Text(
              "Please enter your new password to update the password",
              style: TextStyle(color: const Color(0xFFCBC9D8), fontSize: 14.sp),
            ),
          ),
          const passwordwidget(label: "Password"),
          const passwordwidget(label: "Confirm new Password"),
          const Botton(nextscreen: "resetpasssuccess", text: "Reset Password"),
        ],
      ),
    );
  }
}
