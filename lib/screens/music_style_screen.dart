import 'package:beat_jerky/screens/recently_music_screen.dart';
import 'package:beat_jerky/utils/color.dart';
import 'package:beat_jerky/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../model/music_model.dart';

class MusicStyle extends StatefulWidget {
  const MusicStyle({Key? key}) : super(key: key);

  @override
  State<MusicStyle> createState() => _MusicStyleState();
}

class _MusicStyleState extends State<MusicStyle> {
  final List<MusicModel> musicData = [
    MusicModel(
        name: "Rap Gangs",
        image:
            "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    MusicModel(
        name: "Rap Party",
        image:
            "https://images.unsplash.com/photo-1471478331149-c72f17e33c73?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80"),
    MusicModel(
        name: "Hip Hop Now",
        image:
            "https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    MusicModel(
        name: "Rap Dizz",
        image:
            "https://images.unsplash.com/photo-1465821185615-20b3c2fbf41b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=998&q=80"),
    MusicModel(
        name: "Hip Hop Now",
        image:
            "https://images.unsplash.com/photo-1415201364774-f6f0bb35f28f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    MusicModel(
        name: "Rap Party",
        image:
        "https://images.unsplash.com/photo-1471478331149-c72f17e33c73?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80"),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: blackColor,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const ReusableText(
            title: "Music Style",
          ),
        ),
        body: GridView.builder(
          itemCount: musicData.length,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const RecentlyMusicScreen();
                }));
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(musicData[index].image),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.play_circle_outline,color: whiteColor,size: 30,),
                    Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: blackColor.withOpacity(0.6),
                        ),
                        child
                        : ReusableText(title: musicData[index].name,size: 18,weight: FontWeight.w700,color: whiteColor,))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
