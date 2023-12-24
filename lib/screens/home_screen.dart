import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:beat_jerky/utils/color.dart';
import 'package:beat_jerky/widget/reusable_text.dart';
import 'package:beat_jerky/widget/reusable_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:beat_jerky/screens/recommendation_tab.dart';

import 'message_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> type = ["Recommendation", "Trending", "Busniss", "Crypto"];
  int _currentIndex = 0;
  final List tabs = [
    const RecommendationTab(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const ReusableText(
                    title: "Hello Diana,",
                    size: 18,
                    weight: FontWeight.w700,
                    color: whiteColor,
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return const MessageScreen();
                        }));
                      },
                      child: const Icon(FontAwesomeIcons.solidCommentDots,color: whiteColor,size: 30,)),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const ReusableText(
                title: "What you want to hear today",
                size: 15,
                weight: FontWeight.w400,
                color: greyColor,
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextForm(
                hintText: "Search Podcast",
                prefixIcon: Icon(
                  Icons.search,
                  color: greyColor,
                ),
                suffixIcon: Icon(
                  Icons.filter_list_outlined,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(type.length, (index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        ReusableText(
                          title: type[index],
                          size: 16,
                          color: whiteColor,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 3,
                          width: 30,
                          decoration: BoxDecoration(
                            gradient: _currentIndex == index
                                ? const LinearGradient(
                                    colors: [
                                      indigoColor,
                                      pinkColor,
                                    ],
                                  )
                                : const LinearGradient(
                                    colors: [
                                      transparentColor,
                                      transparentColor,
                                    ],
                                  ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: tabs[_currentIndex],
        ),
      ],
    );
  }
}
