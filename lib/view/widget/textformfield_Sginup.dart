import 'package:flutter/material.dart';

class TextformfieldSginup extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final void Function()? onPressed;
  final Widget? suffixIcon;
  final String? labelText;
  final bool obscureText;
  const TextformfieldSginup({
    
    super.key,
    required this.controller,
    required this.hintText,
    this.onPressed,
    this.suffixIcon, 
    this.labelText, 
     this.obscureText =true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: obscureText,
        obscuringCharacter: '.',
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(color: const Color.fromARGB(255, 180, 180, 180)),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal, width: 1),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
