import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_clone/screens/callpage.dart';
import 'package:whatsapp_ui_clone/screens/chatscreen.dart';
import 'package:whatsapp_ui_clone/screens/comm_screen.dart';
import 'package:whatsapp_ui_clone/screens/statuspage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E54),
          title: Text("WhatsApp", style: GoogleFonts.poppins(fontSize: 25, color: Colors.white)),
          actions: [
            Icon(Icons.search, color: Colors.white,),
            SizedBox(width: 20,),
            Icon(Icons.camera_alt_outlined, color: Colors.white,),
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              iconColor: Colors.white,
              itemBuilder: (context){
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings")),
              ];
            })
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Color.fromARGB(255, 12, 201, 179),
            tabs: [
            Tab(
              child: Icon(Icons.group, ),
            ),
            Tab(
              child: Row(
                children: [
                  Text("Chats", style: GoogleFonts.poppins(),),
                  SizedBox(width: 2,),
                  CircleAvatar(
                    radius: 10,
                    //backgroundColor: Colors.white,
                    child: Text("10", style: GoogleFonts.poppins(),),
                  )
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  Text("Updates", style: GoogleFonts.poppins(),),
                  SizedBox(width: 2,),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Color.fromARGB(255, 11, 189, 168),
                  )
                ],
              ),
            ),
            Tab(
              child: Text("Calls", style: GoogleFonts.poppins(),),
            ),
          ]),
        ),
        
        body: TabBarView(children: [
          CommunityScreen(),
          ChatScreen(),
          StatusPage(),
          CallPage(),
        ]),
      ),
    );
  }
}