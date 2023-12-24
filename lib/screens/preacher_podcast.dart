import 'package:beat_jerky/utils/color.dart';
import 'package:beat_jerky/widget/reusable_text.dart';
import 'package:flutter/material.dart';

class PreacherPodcast extends StatefulWidget {
  const PreacherPodcast({Key? key}) : super(key: key);

  @override
  State<PreacherPodcast> createState() => _PreacherPodcastState();
}

class _PreacherPodcastState extends State<PreacherPodcast> {
  double value = 40;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: transparentColor,
          centerTitle: true,
          title: const ReusableText(
            title: "Podcast Details",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.4,
                width: width * 0.9,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/peakpx.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 60,
                      margin: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: buttonGradient,
                      ),
                      child: const ReusableText(
                        title: "NEW",
                        size: 12,
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ReusableText(
                title: "Monday Morning Preacher",
                size: 25,
                weight: FontWeight.w700,
                color: whiteColor,
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableText(
                title: "Monday Morning Preacher",
                color: greyColor,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: SliderTheme(
                  data:  SliderThemeData(
                    overlayShape: SliderComponentShape.noOverlay,
                    trackHeight: 8,
                  ),
                  child: Slider(
                      value: value,
                      activeColor: indigoColor,
                      inactiveColor: backgroundColor,
                      thumbColor: whiteColor,
                      min: 0,
                      max: 100,

                      onChanged: (v) {
                        setState(() {
                          value = v;
                        });
                      }),
                ),
              ),

              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ReusableText(
                      title: "15:20",
                      color: greyColor,
                      size: 15,
                      weight: FontWeight.w700,
                    ),
                    ReusableText(
                      title: "22:45",
                      color: greyColor,
                      size: 15,
                      weight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.skip_previous,color: greyColor,size: 30,),
                  Icon(Icons.replay_10,color: greyColor,size: 30,),
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: buttonGradient,
                    ),
                    child: const Icon(Icons.play_arrow,color: whiteColor,size: 40,),
                  ),
                 Icon(Icons.forward_10,color: greyColor,size: 30,),
                  Icon(Icons.skip_next,color: greyColor,size: 30,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
