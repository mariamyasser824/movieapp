import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class smallbotton extends StatelessWidget {
  const smallbotton(
      {super.key,
      required this.nextscreen,
      required this.text,
      required this.image});
  final String nextscreen;
  final String text;
  final String image;
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
            width: 145.5.w,
            height: 55.h,
            color: const Color(0xFF25233B),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        image,
                        fit: BoxFit.fill,
                      )),
                ),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
