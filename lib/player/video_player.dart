import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../controller/controller.dart';
import '../utils/color.dart';
import '../widget/reusable_text.dart';


class Player extends StatelessWidget {
  final int i;
  Player({Key? key, required this.i}) : super(key: key);

  final PCC c = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PCC>(
      initState: (x) async {
        //Need to change conditions according preaload page count
        //Don't load too many pages it will cause performance issue.
        // Below is for 1 page preaload.
        if (c.api > 1) {
          await c.disposeController(c.api - 2);
        }
        if (c.api < c.videoPlayerControllers.length - 2) {
          await c.disposeController(c.api + 2);
        }
        if (!c.initilizedIndexes.contains(i)) {
          await c.initializePlayer(i);
        }
        if (c.api > 0) {
          if (c.videoPlayerControllers[c.api - 1] == null) {
            await c.initializeIndexedController(c.api - 1);
          }
        }
        if (c.api < c.videoPlayerControllers.length - 1) {
          if (c.videoPlayerControllers[c.api + 1] == null) {
            await c.initializeIndexedController(c.api + 1);
          }
        }
      },
      builder: (_) {
        if (c.videoPlayerControllers.isEmpty ||
            c.videoPlayerControllers[c.api] == null ||
            !c.videoPlayerControllers[c.api]!.value.isInitialized) {
          return const Center(child: CircularProgressIndicator(color: indigoColor,));
        }

        if (i == c.api) {
          //If Index equals Auto Play Index
          //Set AutoPlay True Here
          if (i < c.videoPlayerControllers.length) {
            if (c.videoPlayerControllers[c.api]!.value.isInitialized) {
              c.videoPlayerControllers[c.api]!.play();
            }
          }
          print('AutoPlaying ${c.api}');
        }
        return Stack(
          children: [
            c.videoPlayerControllers.isNotEmpty &&
                c.videoPlayerControllers[c.api]!.value.isInitialized
                ? GestureDetector(
              onTap: () {
                if (c.videoPlayerControllers[c.api]!.value.isPlaying) {
                  print("paused");
                  c.videoPlayerControllers[c.api]!.pause();
                } else {
                  c.videoPlayerControllers[c.api]!.play();
                  print("playing");
                }
              },
              child: VideoPlayer(c.videoPlayerControllers[c.api]!),
            )
                : const Center(child: CircularProgressIndicator(
              color: indigoColor,
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const ReusableText(title: "Following",size: 18,weight: FontWeight.w700,color: whiteColor,),
                  //     const SizedBox(width: 10,),
                  //     Container(
                  //       height: 15,
                  //       width: 2,
                  //       color: whiteColor,
                  //     ),
                  //     const SizedBox(width: 10,),
                  //     const ReusableText(title: "For You",size: 18,weight: FontWeight.w700,color: whiteColor,),
                  //
                  //   ],
                  // ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        //like
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: blackColor.withOpacity(0.3),
                          ),
                          child: const Icon(Icons.favorite,color: whiteColor,),
                        ),
                        SizedBox(height: 5,),
                        ReusableText(title: "10.4k",color: whiteColor,weight: FontWeight.w700,),
                        SizedBox(height: 10,),
                        //comment
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: blackColor.withOpacity(0.3),
                          ),
                          child: const Icon(Icons.messenger,color: whiteColor,),
                        ),
                        SizedBox(height: 5,),
                        ReusableText(title: "104",color: whiteColor,weight: FontWeight.w700,),
                        SizedBox(height: 10,),
                        //
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: blackColor.withOpacity(0.3),
                          ),
                          child: const Icon(Icons.messenger,color: whiteColor,),
                        ),
                        SizedBox(height: 5,),
                        ReusableText(title: "104",color: whiteColor,weight: FontWeight.w700,),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  ReusableText(title: "@latif",size: 15,
                    weight: FontWeight.w700,
                    color: whiteColor,
                  ),
                  SizedBox(height: 10,),
                  ReusableText(title: "The greatest glory in living lies not in never falling, but in rising every time we fall.",size: 15,
                    weight: FontWeight.w500,
                    color: whiteColor,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}