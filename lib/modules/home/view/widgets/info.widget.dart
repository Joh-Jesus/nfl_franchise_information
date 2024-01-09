import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.textLeft, required this.textRight});

  final String textLeft;
  final String textRight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textLeft,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Text(
            textRight,
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18),
          )
        ],
      ),
    );
  }
}
