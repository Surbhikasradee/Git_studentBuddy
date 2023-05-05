import 'package:flutter/material.dart';

import '../CustomWidget/CategoryCard.dart';
import '../CustomWidget/GridviewContainer.dart';

class HostelPage extends StatefulWidget {
  const HostelPage({Key? key}) : super(key: key);

  @override
  State<HostelPage> createState() => _HostelPageState();
}

class _HostelPageState extends State<HostelPage> {
  final List<Map<String, dynamic>> gridList = [
    {
      "image": "assets/images/hostel1.jpg",
      "Hostel name": "hostel1",
      "Price": "6000 P/M",
      "Rating": "rating :4*"
    },
    {
      "image": "assets/images/hostel1.jpg",
      "Hostel name": "hostel2",
      "Price": "6000 P/M",
      "Rating": "rating :3*"
    },
    {
      "image": "assets/images/hostel1.jpg",
      "Hostel name": "hostel4",
      "Price": "6000 P/M",
      "Rating": "rating :5*"
    },
    {
      "image": "assets/images/hostel1.jpg",
      "Hostel name": "hostel5",
      "Price": "6000 P/M",
      "Rating": "rating :4*"
    },
    {
      "image": "assets/images/hostel1.jpg",
      "Hostel name": "hostel6",
      "Price": "6000 P/M",
      "Rating": "rating :4*"
    },
    {
      "image": "assets/images/hostel1.jpg",
      "Hostel name": "hostel7",
      "Price": "6000 P/M",
      "Rating": "rating :4*"
    },
    {
      "image": "assets/images/hostel1.jpg",
      "Hostel name": "hostel8",
      "Price": "6000 P/M",
      "Rating": "rating :4*"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/rentappimg4.jpg"),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Text(
                      "HOSTELS",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    mainAxisExtent: 200),
                            itemCount: gridList.length,
                            itemBuilder: (context, index) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                elevation: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  height: 100,
                                  width: 100,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "${gridList.elementAt(index)['image']}",
                                        height: 100,
                                        width: 120,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 40),
                                        child: Text(
                                          "${gridList.elementAt(index)["Hostel name"]}",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 40),
                                        child: Text(
                                          "${gridList.elementAt(index)['Price']}",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 40),
                                        child: Text(
                                          "${gridList.elementAt(index)['Rating']}",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      height: 514,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50))),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
