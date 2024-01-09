import 'package:flutter/material.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({
    super.key,
    required this.imgUrl,
    required this.firstTextLeft,
    required this.firstTextRight,
    required this.secondTextLeft,
    required this.secondTextRight,
    this.scaleImg = 7,
  });

  final String imgUrl;
  final String firstTextLeft;
  final String firstTextRight;
  final String secondTextLeft;
  final String secondTextRight;
  final double scaleImg;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(48),
            image: DecorationImage(
              image: NetworkImage(imgUrl, scale: scaleImg),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: firstTextLeft,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
                  children: [
                    TextSpan(
                      text: firstTextRight,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: secondTextLeft,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
                  children: [
                    TextSpan(
                      text: secondTextRight,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
