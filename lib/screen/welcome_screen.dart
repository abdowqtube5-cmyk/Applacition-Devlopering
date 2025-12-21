import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:na/widget/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/1.png"),
          SizedBox(height: 20,),
          Text("Welcome!",style:GoogleFonts.inter(textStyle: 
          TextStyle(fontSize: 45, color: Colors.teal[200]),) ,),

          Text("Find the things that you Love!",style:GoogleFonts.poppins(textStyle: 
          TextStyle(fontSize: 16, color: Colors.black),) ,),
          SizedBox(height: 35,),
          Image.asset("assets/images/2.png"),
          SizedBox(height: 35,),
          Button(text: "SignUp",color: Colors.teal[200],colorfont: Colors.white,),
          SizedBox(height: 25,),
          Button(text: "Login",color: Colors.white,colorfont: Colors.teal[200],),
          
        ],
      ),
    );
  }
}