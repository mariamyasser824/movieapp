import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/core/utils/constant.dart';
import 'package:movieapp2/features/movie/presentation/views/widgets/saveditem.dart';
class Downloadbody extends StatefulWidget {
  const Downloadbody({super.key});

  @override
  State<Downloadbody> createState() => _DownloadbodyState();
}

class _DownloadbodyState extends State<Downloadbody> {
  @override
  var color = Color(0xFFCBC9D8);

  bool check = false;
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: double.infinity,
              height: 30.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dowonload",
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 600.h,
            child: ListView.builder(
              itemBuilder: (context, index) {
                if (downloaded.isEmpty) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Image(image: AssetImage("images/nosave.png"))
                    ],
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.maxFinite,
                      child: Stack(
                        
                        children: [
                          Saveditem(
                          
                              image:
                                  "https://image.tmdb.org/t/p/w500${downloaded[index].posterPath}",
                              title: "${downloaded[index].title}",
                              date: "${downloaded[index].releaseDate}",
                              ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                            splashColor:  Color(0xFFDF0C31) ,
                                onPressed: () {
                                
                                  setState(() {
                                
                                  });
                                        
                                  downloaded.remove(downloaded[index]);
                                },
                                icon: Icon(
                                  Icons.delete_outline_outlined,
                                  color: color,
                                )),
                          )
                        ],
                      ),
                    ),
                  );
                }
              },
              itemCount: downloaded.length,
            ),
          ),
        )
      ],
    );
  }
}
