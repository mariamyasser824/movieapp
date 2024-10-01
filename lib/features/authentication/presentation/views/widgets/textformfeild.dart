import 'package:flutter/material.dart';

class TextformfieldWidget extends StatelessWidget {
  const TextformfieldWidget({super.key, required this.uppertext});

  final String uppertext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: TextFormField(
                        style: TextStyle(color:  Color(0xFFCBC9D8),),
            decoration: InputDecoration(
                labelText: uppertext,
                labelStyle: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFFCBC9D8),
                )),
          ),
        ),
      ],
    );
  }
}
