import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/authentication/presentation/views/widgets/botton.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Verificationdetails extends StatelessWidget {
  const Verificationdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 350.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "OTP Verification",
              style: TextStyle(color: Colors.white, fontSize: 24.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              "6 digit code has been sent to xyz@gmail.com ",
              style: TextStyle(color: const Color(0xFFCBC9D8), fontSize: 14.sp),
            ),
          ),
          OtpTextField(
            borderRadius: BorderRadius.circular(10),
            fieldHeight: 40,
            numberOfFields: 6,
            filled: true,
            fillColor: const Color(0xFF25233B),
            borderColor: const Color(0xff2cbc9d8),
            textStyle: const TextStyle(color: Colors.white),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  });
            }, // end onSubmit
          ),
          const Botton(nextscreen: "resetpassword", text: "Verify"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text("Didn’t receive the OTP ? ",
                  style: TextStyle(fontSize: 10, color: Color(0xFFCBC9D8))),
              InkWell(
                onTap: () {},
                child: const Text(
                  " Resend",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
