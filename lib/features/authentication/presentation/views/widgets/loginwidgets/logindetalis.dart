import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/botton.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/smallbotton.dart';

import '../passwordwidget.dart';
import '../textformfeild.dart';

class logindetails extends StatelessWidget {
  const logindetails({super.key});

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
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 25.sp),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 343.w,
            height: 431.h,
            child: Column(
              children: [
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
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "forgetpassword");
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Color(0xFFCBC9D8), fontSize: 14),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Botton(nextscreen: "homescreen", text: "Login"),
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
                            Navigator.pushNamed(context, "signup");
                          },
                          child: const Text(
                            " Sign up now",
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
