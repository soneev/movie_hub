
import 'package:flutter/material.dart';

class Textfield2 extends StatelessWidget {
  final String title1;
   final String title2;
    final String title3;

  const  Textfield2({
    Key? key,
    required this.title1,
    required this.title2,
    required this.title3
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(title1),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 12,
          color: Colors.black,
          width: 2,
        ),
        const SizedBox(
          width: 5,
        ),
         Text(title2),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 12,
          color: Colors.black,
          width: 2,
        ),
        const SizedBox(
          width: 5,
        ),
         Text(title3)
      ],
    );
  }
}
