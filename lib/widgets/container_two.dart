import 'package:flutter/material.dart';
import 'package:secret_blind_date/widgets/about_us_card_widget.dart';

class ContainerTwo extends StatelessWidget {
  ContainerTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "About Us",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "About Our App System",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Simple register on our website and hopefully you found your dream.\n     In few simple steps you are joining the unique dating app.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AboutUsCardWidget(
                titleText: "Find your Perfect One",
                descriptionText:
                    "Simply register on our app and hopefully you will find your dream match",
                logoUrl: 'assets/images/c21.png',
              ),
              AboutUsCardWidget(
                titleText: "Talk your Heart",
                descriptionText:
                    "Simply register on our app and hopefully you will find your dream match",
                logoUrl: 'assets/images/c22.png',
              ),
              AboutUsCardWidget(
                titleText: "We are connecting People",
                descriptionText:
                    "If you don't want to wait then we have a special category in our application and you can try your luck 😉",
                logoUrl: 'assets/images/c2.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
