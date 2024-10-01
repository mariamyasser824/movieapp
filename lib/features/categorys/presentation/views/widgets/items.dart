import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Items extends StatelessWidget {
  const Items({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 102.w,
        height: 150.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill)));
  }
}
