import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movieapp2/features/categorys/presentation/views/widgets/categoryappbar.dart';
import 'package:movieapp2/features/categorys/presentation/views/widgets/gridview.dart';

class Categorybody extends StatelessWidget {
  const Categorybody({super.key, required this.Text});
  final String Text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Categoryappbar(text: Text),
        ),
        SizedBox(
          height: 30.h,
        ),
        Gridview(query: Text,),
      ],
    );
  }
}
