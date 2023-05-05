import 'package:flutter/material.dart';

class GridContainer extends StatelessWidget {
  var text;

  var image;

  GridContainer({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 2,
        shadowColor: Colors.purpleAccent,
        child: Container(
          child: Column(
            children: [
              Image.asset(
                image,
                height: 150,
                width: 150,
              ),
              Text(text)
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}
