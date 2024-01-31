import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_clone/screens/dummydata.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 60,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/comm.png"),
                  //fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 280,
            left: 25,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Stay connected with a community",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 180,
            left: 25,
            right: 25,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Communities bring members together in topic-based groups, and make it easy to get admin announcements. Any community you're added to will appear here.",
                style: GoogleFonts.poppins(fontSize: 13),
                overflow: TextOverflow.visible,
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            left: 85,
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "See example communities",
                    style: TextStyle(color: Color(0xFF075E54)),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Color(0xFF075E54)),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 90,
            left: 80,
            child: MaterialButton(
              onPressed: () {},
              color: Color(0xFF075E54),
              minWidth: 200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              height: 50,
              child: Text(
                "Start your community",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}