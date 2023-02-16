import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String iconpath;
  final String icontext;

  const Mybutton({Key? key,
    required this.iconpath,
    required this.icontext,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: height*0.112,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey.shade600,
                  spreadRadius: 2,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Image.asset(iconpath),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          icontext,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
