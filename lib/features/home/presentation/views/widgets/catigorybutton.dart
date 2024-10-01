import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Catigorybutton extends StatefulWidget {
  const Catigorybutton({super.key, required this.text});
  final String text;
  @override
  State<Catigorybutton> createState() => _CatigorybuttonState(text);
}

class _CatigorybuttonState extends State<Catigorybutton> {
  var color = const Color(0xFF1F1D35);
  bool check = false;
  final String text;

  _CatigorybuttonState(this.text);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (check == true) {
          color = const Color(0xFF1F1D35);
        } else {
          color = const Color(0xFFDF0C31);
        }
        setState(() {
          check = !check;
        });
        Navigator.pushNamed(context, "categoryscreen", arguments: text);
      },
      child: Container(
        width: 85.w,
        height: 25.h,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 10),
        )),
      ),
    );
  }
}
