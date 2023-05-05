import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CaroselDot.dart';
import 'WRegLog.dart';

class First_Page_Slider extends StatefulWidget {
  const First_Page_Slider({Key? key}) : super(key: key);

  @override
  State<First_Page_Slider> createState() => _First_Page_SliderState();
}

class _First_Page_SliderState extends State<First_Page_Slider> {

  final List<String> imgList = [
    "assets/images/rentIM.png",
    "assets/images/rentIM.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 300),
              child: TextButton(
                  onPressed: () {
                    Get.to(RegLogPage());
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            // CarouselSlider(
            //         items: imgList
            //             .map((item) => Container(
            //           child: Center(
            //             child: Image.asset(
            //               item,
            //               fit: BoxFit.cover,
            //               width: 1000,
            //             ),
            //           ),
            //         ))
            //             .toList(),
            //  options: CarouselOptions(autoPlay: true)),
            CarouselWithDotsPage(imgList: imgList),
          ],
        ),
      ),
    );
  }
}
