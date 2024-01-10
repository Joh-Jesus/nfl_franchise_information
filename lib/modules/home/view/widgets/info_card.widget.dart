import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({
    super.key,
    required this.imgUrl,
    required this.firstTextLeft,
    required this.firstTextRight,
    required this.secondTextLeft,
    required this.secondTextRight,
    required this.scaleImg,
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
          height: 80.h,
          width: 80.w,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(48.r),
            image: DecorationImage(
              image: NetworkImage(imgUrl, scale: scaleImg),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: firstTextLeft,
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18.sp),
                  children: [
                    TextSpan(
                      text: firstTextRight,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              RichText(
                text: TextSpan(
                  text: secondTextLeft,
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18.sp),
                  children: [
                    TextSpan(
                      text: secondTextRight,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400, fontSize: 18.sp),
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
