import 'package:beat_jerky/utils/color.dart';
import 'package:beat_jerky/widget/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:beat_jerky/model/feed_model.dart';
class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final List<FeedModel> feedData = [
    FeedModel(
        name: "Latif Ullah",
        image: "assets/images/1.jpg",
        description:  "The greatest glory in living lies not in never falling, but in rising every time we fall."
    ),
    FeedModel(
        name: "Ramzan",
        image: "assets/images/2.jpg",
        description:  "The greatest glory in living lies not in never falling, but in rising every time we fall."
    ),
    FeedModel(
        name: "Asad",
        image: "assets/images/3.jpg",
        description:  "The greatest glory in living lies not in never falling, but in rising every time we fall."
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: transparentColor,
          automaticallyImplyLeading: false,
          title: const ReusableText(
            title: "Beat Jerky",
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle_outline,
                color: whiteColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: whiteColor,
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: feedData.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/dp.jpg"),
                    ),
                    title: ReusableText(
                      title: feedData[index].name,
                      size: 16,
                      weight: FontWeight.w700,
                      color: whiteColor,
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(feedData[index].image.toString(),),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.favorite,color: redColor,),
                            SizedBox(width: 20,),
                            Icon(Icons.messenger_outline,color: whiteColor,),
                            Spacer(),
                            Icon(Icons.bookmark_border,color: whiteColor,),
                          ],
                        ),
                        SizedBox(height: 10,),
                        ReusableText(title:feedData[index].description,color: whiteColor,size: 15,weight: FontWeight.w400,),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

