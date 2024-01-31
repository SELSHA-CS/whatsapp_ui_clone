import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_clone/screens/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: ((context) => HomePage())
      ));
     });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 160,
            top: 300,
            child: FaIcon(
              FontAwesomeIcons.whatsapp, 
              size: 84, 
              color: Color(0xFF25D366),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 170,
            child: Text("from", style: GoogleFonts.poppins(fontSize: 18),),
          ),
          Positioned(
            bottom: 50,
            left: 155,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.infinity, color: Color(0xFF25D366),),
                SizedBox(width: 9,),
                Text("Meta", style: GoogleFonts.poppins(color: Color(0xFF25D366), fontSize: 18),),
              ],
            ),
          )
        ],
      ),
    );
  }
}