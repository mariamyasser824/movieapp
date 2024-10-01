import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/movie/data/model/movie/movie.dart';

class Saveditem extends StatefulWidget {
  const Saveditem(
      {super.key,
      required this.image,
      required this.title,
      required this.date,
    });
  final String image;
  final String title;
  final String date;


  @override
  State<Saveditem> createState() =>
      _SaveditemState( image: image, title: title, date: date);
}

class _SaveditemState extends State<Saveditem> {
  final String image;
  final String title;
  final String date;


  var color = Color(0xFFCBC9D8);

  bool check = false;

  _SaveditemState(
      {required this.image, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 130.h,
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
                    image: NetworkImage(widget.image), fit: BoxFit.fill),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            width: 100.w,
            height: 130.h,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
              
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150.w,
                      child: Text(
                        widget.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.white,
                            fontSize: 10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.date,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Color(0xFFCBC9D8),
                          fontSize: 7),
                    ),
                  ),
                ],
              ),
            ),
          ),
        
        ],
      ),
    );
  }
}
