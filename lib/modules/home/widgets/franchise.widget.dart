import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nfl_franchise_information/core/core.dart';

class FranchiseWidget extends StatelessWidget {
  const FranchiseWidget({super.key, required this.franchise});
  final IFranchiseModel franchise;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    franchise.franchiseImg,
                    width: 48.h,
                    height: 48.w,
                  ),
                  Text(
                    franchise.name,
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Estado: ",
                      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: franchise.country,
                          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  RichText(
                    text: TextSpan(
                      text: "Conferência: ",
                      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: franchise.conferenceName,
                          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  RichText(
                    text: TextSpan(
                      text: "Divisão: ",
                      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: franchise.divisionName,
                          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
