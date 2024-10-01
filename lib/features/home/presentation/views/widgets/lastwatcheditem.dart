import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Lastwatcheditem extends StatelessWidget {
  const Lastwatcheditem({super.key, required this.image, required this.title, required this.date});
  final String image;
  final String title;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215.w,
      height: 166.h,
      decoration: BoxDecoration(
          color: const Color(0xFF38364C),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.fill),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            width: 215.w,
            height: 100.h,
          ),
        
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
              title,
              maxLines: 1,
              
              style: TextStyle(overflow: TextOverflow.ellipsis,color: Colors.white, fontSize: 10),
                       ),
           ),
          const SizedBox(
            height: 15,
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
              date,
              maxLines: 1,
              style: TextStyle(overflow: TextOverflow.ellipsis,color: Color(0xFFCBC9D8), fontSize: 7),
                       ),
           ),
        ],
      ),
    );
  }
}
