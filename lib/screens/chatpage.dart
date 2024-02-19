import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/dummydata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {

    final chatId  = ModalRoute.of(context)?.settings.arguments;
    final chat = profiles.firstWhere((element) => element['id'] == chatId);

    return Scaffold(
      backgroundColor: Color(0xFFECE5DD),
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Wrap(
          alignment: WrapAlignment.center,
          spacing: 15,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(chat['image']),
              radius: 20,
            ),
            Text(chat['name'], style: TextStyle(color: Colors.white),)
          ],
        ),
        actions: [
          FaIcon(FontAwesomeIcons.video, color: Colors.white,),
          SizedBox(width: 20,),
          Icon(Icons.call, color: Colors.white,),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            iconColor: Colors.white,
            itemBuilder: (context){
              return [
                PopupMenuItem(child: Text("View contact")),
                PopupMenuItem(child: Text("Media, links, and docs")),
                PopupMenuItem(child: Text("Mute notifications")),
                PopupMenuItem(child: Text("Disappearing messages")),
                PopupMenuItem(child: Text("Wallpaper")),
                PopupMenuItem(child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("More"),
                    Icon(Icons.arrow_right)
                  ],
                ))
              ];
            }
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 70,
                width: 325,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "        Message",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent)
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 17,
            bottom: 35,
            child: FaIcon((FontAwesomeIcons.faceLaugh), size: 25, color: Colors.grey,)
          ),
          Positioned(
            left: 220,
            bottom: 35,
            child: Row(
              children: [
                FaIcon(FontAwesomeIcons.paperclip, size: 20, color: Colors.grey,),
                SizedBox(width: 20,),
                FaIcon(FontAwesomeIcons.moneyBill, size: 20, color: Colors.grey,),
                SizedBox(width: 20,),
                FaIcon(FontAwesomeIcons.camera, size: 20, color: Colors.grey,),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 5,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 10, 131, 117),
              child: FaIcon(FontAwesomeIcons.microphone, color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}