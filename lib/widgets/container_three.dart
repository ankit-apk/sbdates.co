import 'package:flutter/material.dart';
import 'package:secret_blind_date/widgets/contact_us_widget.dart';

class ContainerThree extends StatelessWidget {
  const ContainerThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .826,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/c3.png',
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 220,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          ContactUsWidget(
                            textOne: "Address",
                            textTwo: "Victoria, Australia",
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ContactUsWidget(
                            textOne: "Phone No.",
                            textTwo: "+61-0401822190",
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          ContactUsWidget(
                            textOne: "Email",
                            textTwo: "Sbdates.cd@gmail.com",
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Social Network',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/fb.png',
                                      height: 30,
                                    ),
                                    Image.asset(
                                      'assets/images/ig.png',
                                      height: 50,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            color: Color(0xfff94e53),
            child: Center(
              child: Text(
                "Copyright @ SecretBlindDates",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
