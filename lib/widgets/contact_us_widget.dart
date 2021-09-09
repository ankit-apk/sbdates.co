import 'package:flutter/material.dart';

class ContactUsWidget extends StatelessWidget {
  ContactUsWidget({
    Key? key,
    required this.textOne,
    required this.textTwo,
  }) : super(key: key);
  final String? textOne;
  final String? textTwo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textOne!,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          textTwo!,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
