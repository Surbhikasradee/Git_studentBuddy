import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student_buddy/Screens/LoginPage.dart';

import 'RegisteredPage.dart';
class RegLogPage extends StatefulWidget {
  const RegLogPage({Key? key}) : super(key: key);

  @override
  State<RegLogPage> createState() => _RegLogPageState();
}

class _RegLogPageState extends State<RegLogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150,top: 20),
                child: Text("Welcome",style: TextStyle(fontSize: 24,color: Colors.purpleAccent.shade700),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,top: 150),
                child: Image.asset("assets/images/rentIM.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 100),
                child: Container(
                  child: TextButton(onPressed: () {
                    Get.to(RegisterPage());
                  },
                    child: Text("Register",style: TextStyle(color: Colors.white),),),
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent.shade700,
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 10),
                child: Container(
                  child: TextButton(onPressed: () {
                    Get.to(LoginPage());
                  },
                    child: Text("Login",style: TextStyle(color: Colors.black),),),
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
