import 'package:flutter/material.dart';
import 'package:movieapp2/features/home/presentation/views/widgets/catigorybutton.dart';

class Listviewcategory extends StatelessWidget {
  Listviewcategory({super.key});
  List catigorylist = ["All","Adventure", "Action", "Comedy","Crime","Drama", "Horror","Science Fiction","Romance","Historical"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Catigorybutton(text: "${catigorylist[index]}"),
          );
        },
        itemCount: catigorylist.length,
      ),
    );
  }
}
