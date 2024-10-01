import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Item extends StatefulWidget {
  const Item({super.key, required this.image, required this.title, required this.date});
final String image;
  final String title;
  final String date;
  @override
  State<Item> createState() => _SearchtextformfiledState(image: image, title: title, date: date,);
}

class _SearchtextformfiledState extends State<Item> {
  @override
final String image;
  final String title;
  final String date;

  _SearchtextformfiledState({required this.image, required this.title, required this.date});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215.w,
      height: 166.h,
      decoration: BoxDecoration(
          color: const Color(0xFF38364C),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
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
            width: 150.w,
            height: 166.h,
          ),
        
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    width: 150.w,
                     child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(overflow: TextOverflow.ellipsis,color: Colors.white, fontSize: 10),
                               ),
                   ),
                 ),
                           const SizedBox(
                  height:20 ,
                           ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(
                    date,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(overflow: TextOverflow.ellipsis,color: Color(0xFFCBC9D8), fontSize: 7),
                             ),
                 ),
               ],
             ),
           ),
        ],
      ),
    );
  }
}
