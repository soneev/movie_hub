import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String title;
  final String value;
  const CustomField({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        Text(
          value,
          // maxLines: 1,

          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
