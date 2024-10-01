import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/movie/presentation/views/widgets/moviebloc.dart';

class Downpartofmovie extends StatefulWidget {
  const Downpartofmovie({super.key, required this.id});
  final int id;
  @override
  State<Downpartofmovie> createState() => _DownpartofmovieState(idnum: id);
}

class _DownpartofmovieState extends State<Downpartofmovie> {
  @override
  final int idnum;
  var color = Color(0xFFCBC9D8);
  bool check = false;

  _DownpartofmovieState({required this.idnum});

  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (check == true) {
              color = const Color(0xFFCBC9D8);
          
            } else {
              color = const Color(0xFFDF0C31);
            
            }
            setState(() {
              check = !check;
            });
          },
          child: Column(
            children: [
              Text(
                "Similar",
                style: TextStyle(color: color, fontSize: 14),
              ),
              Container(
                width: 100.w,
                child: Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 1,
                  height: 1,
                  color: color,
                ),
              ),
            
         check==true?Moviebloc(id: idnum):Column()
            
            
            ],
          ),
        )
      ],
    );
  }
}
