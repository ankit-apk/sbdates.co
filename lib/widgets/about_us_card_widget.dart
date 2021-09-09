import 'package:flutter/material.dart';

class AboutUsCardWidget extends StatelessWidget {
  AboutUsCardWidget({
    Key? key,
    required this.descriptionText,
    required this.logoUrl,
    required this.titleText,
  }) : super(key: key);
  final String? logoUrl;
  final String? titleText;
  final String? descriptionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      child: Stack(
        children: [
          Positioned(
            top: 40,
            child: Container(
              width: 300,
              height: 260,
              decoration: BoxDecoration(
                color: Color(0xfffff3f5),
                border: Border.all(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      titleText!,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      descriptionText!,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 80,
                width: 80,
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(logoUrl!),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
