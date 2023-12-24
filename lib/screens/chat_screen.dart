import 'package:beat_jerky/utils/color.dart';
import 'package:beat_jerky/widget/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../widget/build_message.dart';


class ChatScreen extends StatelessWidget {
  final String image;
  final String name;
  final bool status;
  const ChatScreen({Key? key, required this.image, required this.name, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: blackColor,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(image!),
          ),
          title: ReusableText(title: name,color: whiteColor,),
          subtitle: ReusableText(title: status ? "online" : "offline",color: greyColor,),
        ),
        actions: const [
          Icon(Icons.more_vert,color: whiteColor,),
          SizedBox(width: 10,),
        ],
      ),
      body:  Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: const [
                  BuildMessage(message: 'Hi, how are you?',isMe: false,),
                 BuildMessage(message: 'I\'m good, thanks! How about you?',isMe: true,),
                 BuildMessage(message: 'Doing pretty well, thanks for asking.',isMe: false,),
                 BuildMessage(message: 'Great to hear!',isMe: true,),
                 BuildMessage(message: 'How has your day been so far?',isMe: false,),
                 BuildMessage(message: 'It\'s been good, just busy with work. How about you?',isMe: true,),
                 BuildMessage(message: 'Same here, lots of work to do!',isMe: false,),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: backgroundColor,
            child: const TextField(
              style: TextStyle(color: whiteColor),
              decoration: InputDecoration(
                hintText: "write your message",
                hintStyle: TextStyle(color: whiteColor),
                suffixIcon: Icon(Icons.send,color: whiteColor,),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )
              ),
            ),
          )
        ],
      )
    ),);
  }
}



