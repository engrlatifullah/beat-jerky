import 'package:beat_jerky/utils/color.dart';
import 'package:beat_jerky/widget/reusable_text.dart';
import 'package:flutter/material.dart';

import '../model/recently_music.dart';

class RecentlyMusicScreen extends StatefulWidget {
  const RecentlyMusicScreen({Key? key}) : super(key: key);

  @override
  State<RecentlyMusicScreen> createState() => _RecentlyMusicScreenState();
}

class _RecentlyMusicScreenState extends State<RecentlyMusicScreen> {
  final List<RecentlyMusicModel> recentlyData = [
    RecentlyMusicModel(
        title: 'Post Malone',
        subTitle: 'Chemical',
        image:
            "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    RecentlyMusicModel(
        title: 'Yng Lvcas',
        subTitle: 'La Bebe',
        image:
            "https://images.unsplash.com/photo-1471478331149-c72f17e33c73?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80"),
    RecentlyMusicModel(
        title: 'TAEYANG',
        subTitle: 'Seed.id',
        image:
            "https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    RecentlyMusicModel(
        title: 'Post Malone',
        subTitle: 'Chemical',
        image:
            "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    RecentlyMusicModel(
        title: 'Yng Lvcas',
        subTitle: 'La Bebe',
        image:
            "https://images.unsplash.com/photo-1471478331149-c72f17e33c73?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80"),
    RecentlyMusicModel(
        title: 'TAEYANG',
        subTitle: 'Seed.id',
        image:
            "https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: blackColor,
          title: const ReusableText(
            title: "Recently Music",
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(14),
          shrinkWrap: true,
          itemCount: recentlyData.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  ReusableText(
                    title: index.toString(),
                    size: 18,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(recentlyData[index].image),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        title: recentlyData[index].title,
                        color: whiteColor,
                        size: 16,
                        weight: FontWeight.bold,
                      ),
                      ReusableText(
                        title: recentlyData[index].subTitle,
                        color: greyColor,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.more_vert,color: whiteColor,),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
