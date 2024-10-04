import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nfl_franchise_information/core/core.dart';
import 'package:nfl_franchise_information/modules/modules.dart';
import 'package:nfl_franchise_information/utils/routes.dart';

class HomeSuccessWidget extends StatelessWidget {
  const HomeSuccessWidget({super.key, required this.listOfFranchisesInNfl});

  final List<IFranchiseModel> listOfFranchisesInNfl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      child: ListView.builder(
        itemCount: listOfFranchisesInNfl.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: GestureDetector(
                  child: FranchiseWidget(franchise: listOfFranchisesInNfl[index]),
                  onTap: () => GoRouter.of(context)
                      .pushNamed("$franchiseRoute/${listOfFranchisesInNfl[index].name}"),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
