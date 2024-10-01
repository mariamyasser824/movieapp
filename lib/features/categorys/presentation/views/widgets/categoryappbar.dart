import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categoryappbar extends StatelessWidget {
  const Categoryappbar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30.h,
      child: Row(
        children: [
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  width: 35.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1F1D35),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.white,
                  ))),
          Padding(
            padding: const EdgeInsets.only(left: 85),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
