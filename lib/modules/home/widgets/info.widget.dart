import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.textLeft, required this.textRight});

  final String textLeft;
  final String textRight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textLeft,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18.sp),
          ),
          Text(
            textRight,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18.sp),
          )
        ],
      ),
    );
  }
}
