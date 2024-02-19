import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/dummydata.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: profiles.map((profile) => InkWell(
          onTap: (){
            Navigator.pushNamed(context, 'chatpage', arguments: profile["id"]);
          },
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(profile["image"])
              ),
              title: Text(profile["name"]),
              subtitle: Text(profile["msg"]),
              trailing: Column(
                children: [
                  Text(profile["time"]),
                  Expanded(
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: const Color(0xFF25D366),
                      child: Text("${profile["mno"]}"),
                    ),
                  )
                ],
              ),
            ),
          ),
        )).toList(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){}, 
          backgroundColor: const Color(0xFF075E54),
          child: const Icon(Icons.message, color: Colors.white,),
        ),
    );
  }
}