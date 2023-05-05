import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'LoginPage.dart';
class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 110,top: 90),
                      child: Text("Verification Code",style: TextStyle(fontSize: 20,color: Colors.black),),
                    ),
                    Text("Please type verification code \n to +123456",style: TextStyle(fontSize: 20,color: Colors.white),)
                  ],
                ),
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.purpleAccent.shade700,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45,top: 260),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 117,top: 260),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 190,top: 260),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 265,top: 260),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 300,
          ),
          Container(
            child: TextButton(onPressed: () {
Get.to(LoginPage());
            },
              child: Text("Verify",style: TextStyle(color: Colors.white),),),
            height: 45,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.purpleAccent.shade700,
                borderRadius: BorderRadius.circular(50)
            ),
          ),
        ],
      ),
    );
  }
}


