import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/botton.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/passwordwidget.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/smallbotton.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/textformfeild.dart';

class Signupdetails extends StatelessWidget {
  const Signupdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              width: 100.w,
              height: 100.h,
              child: Text(
                "Signup",
                style: TextStyle(color: Colors.white, fontSize: 25.sp),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 343.w,
            height: 500.h,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextformfieldWidget(
                    uppertext: 'Full Name',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextformfieldWidget(
                    uppertext: 'EmailAddress',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: passwordwidget(label: "Password"),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Botton(nextscreen: "login", text: "Signup"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150.w,
                      child: const Divider(
                        color: Color(0xFF38364C),
                        height: 2,
                        thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                    ),
                    const Text(
                      "or",
                      style: TextStyle(color: Color(0xFFCBC9D8)),
                    ),
                    SizedBox(
                      width: 150.w,
                      child: const Divider(
                        color: Color(0xFF38364C),
                        height: 2,
                        thickness: 1,
                        indent: 5,
                        endIndent: 5,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    smallbotton(
                      nextscreen: "nextscreen",
                      text: "Google",
                      image: 'images/google.jpeg',
                    ),
                    smallbotton(
                      nextscreen: '',
                      text: 'Facebook',
                      image: 'images/face.png',
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Do you already have an account? ",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFFCBC9D8))),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "login");
                          },
                          child: const Text(
                            " Login now",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        )
                      ]),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
