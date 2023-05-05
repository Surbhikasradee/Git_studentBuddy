import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Screens/HomePage.dart';
import 'BNBController.dart';
class BottomNavigatePage extends StatefulWidget {
  const BottomNavigatePage({Key? key}) : super(key: key);

  @override
  State<BottomNavigatePage> createState() => _BottomNavigatePageState();
}

class _BottomNavigatePageState extends State<BottomNavigatePage> {

  final BNBController bnbcont = Get.put(
      BNBController());
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // body: IndexedStack(
      //   index: bnbcont.currentIndex.value,
      //   children: [
      //     HomePage()
      //   ],
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: 1,
        color: Colors.purpleAccent.shade700,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.purpleAccent.shade700,
        onTap: (val) {
          bnbcont.currentIndex(val);
          // onTap: (val) {
          //   bnbcont.currentIndex.value = val;
          //   print("on Page : $val");
          //   setState(() {});
        },
        items: [
          Icon(Icons.home,size: 25,color: Colors.white,),
          Icon(Icons.settings,size: 25,color: Colors.white,),
          Icon(Icons.list,size: 25,color: Colors.white,),
        ],

      ),
    );
  }
}
