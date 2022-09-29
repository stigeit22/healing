import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Icon icon;
  final TextInputType typeinput;
  final String hint;

  final bool obscure;
  const CustomTextFormField({
    Key? key,
    required this.typeinput,
    this.obscure = false,
    required this.icon,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscure,
        decoration: InputDecoration(
          iconColor: Colors.grey,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(color: Colors.white),
          ),
          
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Colors.white)),
          prefixIcon: icon,
          prefixIconColor: Colors.green,
          hoverColor: Colors.red,
          hintText: hint,
        ));
  }
}
