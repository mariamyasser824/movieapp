import 'package:flutter/material.dart';

class passwordwidget extends StatefulWidget {
  const passwordwidget({super.key, required this.label});
  final String label;

  @override
  State<passwordwidget> createState() => _passwordwidgetState(label: label);
}

class _passwordwidgetState extends State<passwordwidget> {
  final String label;
  var icon = Icons.visibility_off_rounded;
  bool check = false;

  _passwordwidgetState({required this.label});
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
            obscureText: !check,
            decoration: InputDecoration(
                labelText: label,
                labelStyle:
                    const TextStyle(color: Color(0xFFCBC9D8), fontSize: 14),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      check = !check;
                      if (check == false) {
                        icon = Icons.visibility_off_rounded;
                      } else if (check == true) {
                        icon = Icons.visibility;
                      }
                    });
                  },
                  icon: Icon(icon),
                )),
          ),
        ),
      ],
    );
  }
}
