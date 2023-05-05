import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../CustomWidget/CategoryCard.dart';
import 'HostelScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Hii Surbhi",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.list))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: Text(
                  "Indore",
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: "Search"),
                  ),
                ),
                height: 44,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(30)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250, top: 20),
                child: Text(
                  "Category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 10,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.purple,
                          ),
                          TextButton(onPressed: (){
                            Get.to(HostelPage());
                          }, child: Text("HOSTEL",style: TextStyle(color: Colors.black),))
                        ],
                      ),
                      height: 95,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.purple,
                          ),
                          TextButton(onPressed: (){ Get.to(HostelPage());}, child: Text("ROOMS",style: TextStyle(color: Colors.black),))

                        ],
                      ),
                      height: 95,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.table_chart_rounded,
                            color: Colors.purple,
                          ),
                          TextButton(onPressed: (){}, child: Text("FURNITURE",style: TextStyle(fontSize: 11,color: Colors.black),))

                        ],
                      ),
                      height: 95,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 220,
                child: ListView(
                  children: [
                    CategoryCard(
                      image: "assets/images/hostel1.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      image: "assets/images/hostel2.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      image: "assets/images/hostel1.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      image: "assets/images/hostel2.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      image: "assets/images/hostel1.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      image: "assets/images/hostel2.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.transparent,
                height: 220,
                child: ListView(
                  children: [
                    CategoryCard(
                      image: "assets/images/hostel1.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      image: "assets/images/hostel2.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      image: "assets/images/hostel1.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      image: "assets/images/hostel2.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      image: "assets/images/hostel1.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryCard(
                      image: "assets/images/hostel2.jpg",
                      text: "HOSTEL NAME \nAddress",
                    ),
                  ],
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
