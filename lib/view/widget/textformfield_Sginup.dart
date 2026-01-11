import 'package:flutter/material.dart';

class TextformfieldSginup extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final void Function()? onPressed;
  final Widget? suffixIcon;
  final String? labelText;
  final bool obscureText;
  final Color? focusColor;
  final Color? borderColor;
  final Color? focusedborderColor;
  final String? erorrText;
  final void Function(String)? onChanged;
  const TextformfieldSginup({
    super.key,
    required this.controller,
    required this.hintText,
    this.onPressed,
    this.suffixIcon,
    this.labelText,
    this.obscureText = false,
    this.focusColor, 
    this.borderColor, 
    this.focusedborderColor, 
    this.erorrText, 
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        obscureText: obscureText,
        obscuringCharacter: '.',
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: labelText,
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(color: const Color.fromARGB(255, 180, 180, 180)),

          border: OutlineInputBorder(),
          focusColor: focusColor,
          
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor?? Colors.teal
            , width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: focusedborderColor?? Colors.teal, width: 1),
          ),
          suffixIcon: suffixIcon,
          errorText: erorrText,
        ),
      ),
    );
  }
}
