import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconpath;
  final String icontext;
  final String iconsubtext;
  const MyListTile({Key? key,
  required this.iconpath,
    required this.icontext,
    required this.iconsubtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(height*0.025),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: width*0.2,
                    child: Image.asset(iconpath),
                  ),
                  SizedBox(
                    width: width*0.05,
                  ),
                  Column(
                    children: [
                      Text(icontext,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      Text(iconsubtext,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade700,fontSize: 20),),
                    ],
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          )
        ],
      ),
    );
  }
}
