import 'package:beat_jerky/utils/color.dart';
import 'package:flutter/material.dart';

import '../model/message_model.dart';
import '../widget/reusable_text.dart';
import 'chat_screen.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final List<Message> users = [
    Message(
      image:
          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      title: "Angel",
      message: "Live as if you were to die tomorrow",
      time: "12:00",
      isOnline: false,
    ),
    Message(
      image:
     "https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      title: "Asad",
      message: "The time is always right to do what is right",
      time: "12:00",
      isOnline: true,
    ),
    Message(
      image:
          "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      title: "Ali",
      message: "Everything you can imagine is real",
      time: "11:00",
      isOnline: false,
    ),
    Message(
      image:
          "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      title: "Anesa",
      message: "It always seems impossible until it's done",
      time: "09:00",
      isOnline: true,
    ),
    Message(
      image:
         "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=389&q=80",
          title: "Sad",
      message: "The time is always right to do what is right",
      time: "01:00",
      isOnline: false,
    ),
    Message(
      image:
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      title: "Princess",
      message: "Live as if you were to die tomorrow",
      time: "12:00",
      isOnline: false,
    ),
    Message(
      image:
      "https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      title: "Ramzan",
      message: "The time is always right to do what is right",
      time: "12:00",
      isOnline: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: indigoColor,
          onPressed: () {  },child: Icon(Icons.message),),
        appBar: AppBar(
          backgroundColor: blackColor,
          title: const ReusableText(
            title: "Messages",
          ),
          actions: const [
            Icon(
              Icons.search,
              color: whiteColor,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(14),
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            final data = users[index];
            return  ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return ChatScreen(
                    name: data.title!,
                    image: data.image!,status: data.isOnline!,);
                }),);
              },
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(data.image!),
              ),
              title: Row(
                children: [
                  ReusableText(title: data.title,size: 18,color: whiteColor,weight: FontWeight.w700,),
                  SizedBox(width: 10,),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: data.isOnline! ? greenColor : greyColor,
                  )
                ],
              ),
              subtitle: ReusableText(title: data.message,color: greyColor,),
              trailing: ReusableText(title: data.time,color: greyColor,),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              color: backgroundColor,
              thickness: 2,
            );
          },
        ),
      ),
    );
  }
}
