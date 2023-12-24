import 'package:beat_jerky/screens/settings_screen.dart';
import 'package:beat_jerky/widget/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../utils/color.dart';
import '../widget/round_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isVideo = true;
  bool isPic = false;
  final List videosList = [
    "https://cdn.pixabay.com/photo/2022/01/22/13/30/mother-and-child-6957312_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/03/27/21/52/woman-1284411_640.jpg",
    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/06/19/10/32/owl-50267_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/01/27/04/32/books-1163695_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/01/02/16/53/lion-1118467_960_720.jpg",
    "https://cdn.pixabay.com/photo/2020/09/18/21/12/buildings-5582974_960_720.jpg",
    "https://cdn.pixabay.com/photo/2020/10/06/11/55/woman-5632026_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/11/06/13/50/family-2923690_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/07/31/11/33/people-2557483_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/11/15/34/lion-3012515_960_720.jpg",
  ];
  final List imageList = [
    "https://cdn.pixabay.com/photo/2017/07/31/11/33/people-2557483_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/11/15/34/lion-3012515_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/01/27/04/32/books-1163695_960_720.jpg",
    "https://cdn.pixabay.com/photo/2020/10/06/11/55/woman-5632026_960_720.jpg",
    "https://cdn.pixabay.com/photo/2022/01/22/13/30/mother-and-child-6957312_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/03/27/21/52/woman-1284411_640.jpg",
    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/06/19/10/32/owl-50267_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/11/06/13/50/family-2923690_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/01/02/16/53/lion-1118467_960_720.jpg",
    "https://cdn.pixabay.com/photo/2020/09/18/21/12/buildings-5582974_960_720.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: transparentColor,
          elevation: 0,
          title: const ReusableText(title: "Profile"),
          automaticallyImplyLeading: false,
          actions: [
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    return SettingsScreen();
                  }),);
                },
                child: Icon(Icons.settings,color: whiteColor,)),
            SizedBox(width: 20,)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      ReusableText(
                        title: "1342",
                        size: 18,
                        weight: FontWeight.w500,
                        color: greyColor,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ReusableText(
                        title: "Followers",
                        size: 18,
                        weight: FontWeight.w700,
                        color: whiteColor,
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                            color: blackColor,
                            shape: BoxShape.circle,
                            border: GradientBoxBorder(
                              width: 2,
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight,
                                colors: [
                                  indigoColor,
                                  pinkColor,
                                ],
                              ),
                            )),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: blackColor,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/dp.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                          right: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.camera_alt,
                            color: whiteColor,
                            size: 30,
                          ))
                    ],
                  ),
                  Column(
                    children: const [
                      ReusableText(
                        title: "586",
                        size: 18,
                        weight: FontWeight.w500,
                        color: greyColor,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ReusableText(
                        title: "Following",
                        size: 18,
                        weight: FontWeight.w700,
                        color: whiteColor,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ReusableText(
                title: "Latif Ullah",
                color: whiteColor,
                size: 18,
                weight: FontWeight.w700,
              ),
              const SizedBox(
                height: 5,
              ),
              const ReusableText(
                title: "Sprinkling kindness everywhere I go",
                color: greyColor,
                weight: FontWeight.w500,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: RoundButton(
                    title: 'Follow',
                    onTap: () {},
                  )),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: const GradientBoxBorder(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,
                            colors: [
                              indigoColor,
                              pinkColor,
                            ],
                          ),
                        ),
                      ),
                      child: const ReusableText(
                        title: "Edit",
                        size: 18,
                        weight: FontWeight.w400,
                        color: whiteColor,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isVideo = true;
                        isPic = false;
                      });
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.video_library,
                              color: isVideo ? whiteColor : greyColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ReusableText(
                              title: "Videos",
                              size: 15,
                              color: isVideo ? whiteColor : greyColor,
                              weight: FontWeight.w700,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 3,
                          width: 100,
                          color: isVideo ? pinkColor : transparentColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 40,),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isVideo = false;
                        isPic = true;
                      });
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.photo_library,
                              color: isPic ? whiteColor : greyColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ReusableText(
                              title: "Photos",
                              size: 15,
                              color: isPic ? whiteColor : greyColor,
                              weight: FontWeight.w700,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 3,
                          width: 100,
                          color: isPic ? pinkColor : transparentColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              isVideo
                  ? Expanded(
                      child: GridView.builder(
                        itemCount: videosList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(videosList[index]),
                                  fit: BoxFit.cover),
                            ),
                            child: const Icon(
                              Icons.play_circle,
                              color: whiteColor,
                              size: 40,
                            ),
                          );
                        },
                      ),
                    )
                  : Expanded(
                      child: GridView.builder(
                        itemCount: imageList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(imageList[index]),
                                  fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
