import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:secret_blind_date/widgets/container_one.dart';
import 'package:secret_blind_date/widgets/container_three.dart';
import 'package:secret_blind_date/widgets/container_two.dart';

class LandingPageUi extends StatelessWidget {
  LandingPageUi({Key? key}) : super(key: key);
  final List sections = [
    ContainerOne(),
    ContainerTwo(),
    ContainerThree(),
  ];

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //parent column having containers as children
      body: Column(
        children: [
          Container(
            color: Color(0xfff83a40),
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Image.asset(
                  'assets/images/c123.png',
                  height: 60,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'SECRET BLIND DATE',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          itemScrollController.scrollTo(
                              index: 1,
                              duration: Duration(seconds: 2),
                              curve: Curves.easeInOutCubic);
                        },
                        child: Text(
                          "About Us",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          itemScrollController.scrollTo(
                              index: 2,
                              duration: Duration(seconds: 2),
                              curve: Curves.easeInOutCubic);
                        },
                        child: Text(
                          "Contact Us",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ScrollablePositionedList.builder(
              itemCount: 3,
              itemBuilder: (context, index) => sections[index],
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
            ),
          ),
        ],
      ),
    );
  }
}
