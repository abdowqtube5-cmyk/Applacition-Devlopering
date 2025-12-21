import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? colorfont;
  const Button({
    super.key,
    required this.text, 
    this.color,  
    this.colorfont
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 199.63,
      height: 38.21,
      decoration: BoxDecoration(
        color: color ??   Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(255, 128, 203, 196),
        )
      ),
      child: Center(child: Text(text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(fontSize: 18, color: colorfont),
      ),),),
    );
  }
}
