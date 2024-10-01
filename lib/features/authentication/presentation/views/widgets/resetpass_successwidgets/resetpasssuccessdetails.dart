import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/botton.dart';

class Resetpasssuccessdetails extends StatelessWidget {
  const Resetpasssuccessdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 250.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Congrats!",
              style: TextStyle(color: Colors.white, fontSize: 24.sp),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 8, left: 8, top: 15, bottom: 15),
            child: Text(
              "Congrats your password has been updated please continue to login",
              style: TextStyle(color: const Color(0xFFCBC9D8), fontSize: 14.sp),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Botton(nextscreen: "login", text: "Login"),
        ],
      ),
    );
  }
}
