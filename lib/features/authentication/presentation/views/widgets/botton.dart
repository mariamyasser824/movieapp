import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Botton extends StatelessWidget {
  const Botton({super.key, required this.nextscreen, required this.text});
  final String nextscreen;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, nextscreen);
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Container(
            width: 343.w,
            height: 50.h,
            color: const Color(0xFFDF0C31),
            child: Center(
                child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
