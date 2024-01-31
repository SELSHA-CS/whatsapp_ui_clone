import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_clone/screens/dummydata.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/images/p1.jpg"),
              child: Stack(
                children: [
                  Positioned(
                    top: 32,
                    left: 30,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.add),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Recent updates", style: GoogleFonts.poppins(fontSize: 17),),
          ),
          Expanded(
            child: ListView(
              //physics: NeverScrollableScrollPhysics(),
              children: profiles.map((profile) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(profile["image"]),
                ),
                title: Text(profile["name"]),
                subtitle: Text(profile["time"]),
            )).toList(),
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){}, 
          backgroundColor: Color(0xFF075E54),
          child: Icon(Icons.camera_alt_outlined, color: Colors.white,),
        ),
    );
  }
}