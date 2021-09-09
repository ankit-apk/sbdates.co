import 'package:flutter/material.dart';

class ContainerOne extends StatelessWidget {
  const ContainerOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1.111,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/c1.png'),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Text(
                        "Make a wish,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                      Text(
                        "Hopefully it will become true here",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                      // Text(
                      //   "Make a wish, we will fullfill\n               it for you",
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white,
                      //       fontSize: 24),
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            // "Simple register on our website we will find a girl\n    of your dream.In few simple steps you are\n            joining the unique dating app.",
                            "SBD, Secret Blind Dates is a new unique dating application where",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            // "Simple register on our website we will find a girl\n    of your dream.In few simple steps you are\n            joining the unique dating app.",
                            "you can find your match and if you don't want to wait then,",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            // "Simple register on our website we will find a girl\n    of your dream.In few simple steps you are\n            joining the unique dating app.",
                            "we have an another category for you (18+), Try it and Love it.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  )
                ],
              ),
              Image.asset(
                'assets/images/c12.png',
                height: 560,
              ),
            ],
          )
        ],
      ),
    );
  }
}
