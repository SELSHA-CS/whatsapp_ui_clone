import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_ui_clone/screens/dummydata.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green,
              child: Icon(Icons.link),
            ),
            title: Text("Create a call link"),
            subtitle: Text("Share a link for your WhatsApp call"),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Recent", style: GoogleFonts.poppins(fontSize: 18)),
          ),
          ...profiles.map((profile) => ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(profile["image"]),
            ),
            title: Text(profile["name"]),
            subtitle: Row(
              children: [
                Icon(profile["icons"]),
                Text(profile["date"])
              ],
            ),
            trailing: Icon(profile["icons2"]),
          )).toList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){}, 
          backgroundColor: Color(0xFF075E54),
          child: Icon(Icons.add_call, color: Colors.white,),
        ),
    );
  }
}