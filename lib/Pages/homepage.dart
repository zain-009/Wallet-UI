import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/util/my_button.dart';
import 'package:wallet_ui/util/my_card.dart';
import 'package:wallet_ui/util/my_list_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.cabin,
              color: Colors.black,
            ),
          )
        ],
        title: Row(
          children: const [
            Text(
              'My',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              ' Card',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: height * 0.015),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.25,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MyCard(
                      balance: 5250,
                      cardNumber: 12345678,
                      expiryMonth: 10,
                      expiryYear: 24,
                      color: Colors.blue,
                    ),
                    MyCard(
                      balance: 345,
                      cardNumber: 12345678,
                      expiryMonth: 11,
                      expiryYear: 26,
                      color: Colors.brown,
                    ),
                    MyCard(
                      balance: 234,
                      cardNumber: 12345678,
                      expiryMonth: 10,
                      expiryYear: 22,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Mybutton(iconpath: 'lib/images/send.png', icontext: "Send"),
                    Mybutton(iconpath: 'lib/images/pay.png', icontext: "Pay"),
                    Mybutton(
                        iconpath: 'lib/images/bill.png', icontext: "Bills"),
                  ],
                ),
              ),
              const MyListTile(
                  iconpath: 'lib/images/stats.png',
                  icontext: "Statistics",
                  iconsubtext: "Payments and Income"),
              const MyListTile(
                  iconpath: 'lib/images/transaction.png',
                  icontext: "Transactions",
                  iconsubtext: "Transaction History"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.monetization_on,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        child: Padding(
          padding: EdgeInsets.only(top: height * 0.001, bottom: height * 0.001),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    size: 35,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    size: 35,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
