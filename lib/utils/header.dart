
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(text: "", children: <TextSpan>[
        TextSpan(
            text: "Movies",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30)),
        TextSpan(
            text: "Hub",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30))
      ]),
    );
  }
}
