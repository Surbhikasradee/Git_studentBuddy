import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Screens/HostelScreen.dart';

class CategoryCard extends StatelessWidget {
  var image;
  var text;
  CategoryCard({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
    ),
              elevation: 10,
              shadowColor: Colors.purple.shade100,
              child: Container(
                height: 100,
                width: 180,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(30)),
                child: Image.asset(image),
                //child: Image.asset("assets/images/hostel1.jpg"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(text),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60, top: 6),
            child: Container(
              child: Center(child: TextButton(onPressed: () {  Get.to(HostelPage()); }, child: Text("BOOK",style: TextStyle(fontSize: 14,color: Colors.black),),)),
              height: 35,
              width: 70,
              decoration: BoxDecoration(
                  border: Border.all(width: 0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(30)),
            ),
          )
        ],
      ),
      height: 220,
      width: 170,
      decoration: BoxDecoration(
          border: Border.all(width: 0, color: Colors.grey),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
