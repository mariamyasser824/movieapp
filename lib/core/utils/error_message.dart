import 'package:flutter/material.dart';
import 'package:movieapp2/core/utils/styles.dart';

class CustomErrorMessage extends StatelessWidget {
  final String errMessage;
  const CustomErrorMessage({super.key, required this.errMessage});

  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: Styles.textStyle18,
    );
  }
}
