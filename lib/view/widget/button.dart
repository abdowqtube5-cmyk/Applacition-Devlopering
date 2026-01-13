import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? colorfont;
  final void Function()? onPressed;

  const Button({super.key, required this.text, this.color, this.colorfont, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // يأخذ العرض المتاح
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: 50,
      child: MaterialButton(
        onPressed: onPressed,
        color: color ?? Colors.teal[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // شكل بيضاوي (Capsule)
        ),
        elevation: 0,
        child: Text(
          text,
          style: GoogleFonts.cairo( // تغيير الخط ليدعم العربية بشكل أفضل
            textStyle: TextStyle(
              fontSize: 18, 
              color: colorfont ?? Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}