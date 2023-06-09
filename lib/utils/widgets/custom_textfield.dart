
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final bool obscureText;
  final String labelText;
  final TextEditingController tController;
  final Icon? icon;
  final Widget suffixIcon;
  final String ?title;
  const CustomTextFieldWidget(
      {Key? key,
      this.title,
      this.obscureText = false,
      required this.labelText,
       required this.tController,
      this.icon,
      this.suffixIcon=const SizedBox()    })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text(title??"",style: const TextStyle(fontSize: 14,color: Colors.black),),
          const SizedBox(height: 8,),
        Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.grey.withOpacity(0.2)),
          child: TextFormField(
            controller: tController,
            cursorColor: Colors.blue,
            obscureText: obscureText,
            decoration: InputDecoration(
              labelText: labelText,
              isDense: true,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: const TextStyle(color: Colors.grey),
              suffixIcon: suffixIcon,
              icon: Padding(
                padding:  const EdgeInsets.fromLTRB(23, 8, 1, 8),
                child: icon,
              ),

              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(6)),
            ),
          ),
        ),
      ],
    );
  }
}
