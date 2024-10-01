import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Latestmovieslist extends StatelessWidget {
  const Latestmovieslist({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 124.w,
                    height: 178.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "images/notfound.jpeg",
                            ),
                            fit: BoxFit.fill)),
                  ),
                ));
          },
          itemCount: 10),
    );
  }
}
