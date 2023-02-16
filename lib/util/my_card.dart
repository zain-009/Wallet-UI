import 'dart:core';

import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  final double balance;

  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width*0.08,
      ),
      child: Card(
        elevation: 10,
        color: color,
        child: Padding(
          padding: EdgeInsets.all(height*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Balance",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  Image.asset(
                    'lib/images/visa.png',
                    height: height*0.05,
                  ),
                ],
              ),
              Text(
                '\$' + balance.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 35),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cardNumber.toString(),
                    style: const TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  Text(
                    expiryMonth.toString() + '/' + expiryYear.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
