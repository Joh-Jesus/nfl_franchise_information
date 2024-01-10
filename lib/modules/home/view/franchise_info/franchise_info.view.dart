import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nfl_franchise_information/modules/home/view/widgets/info.widget.dart';
import 'package:nfl_franchise_information/modules/home/view/widgets/info_card.widget.dart';
import 'package:nfl_franchise_information/utils/formatters/value_cents.formatter.dart';
import 'package:nfl_franchise_information/utils/interfaces/franchise_model.interface.dart';

class FranchiseInfoWidget extends StatelessWidget {
  const FranchiseInfoWidget({super.key, required this.franchise});
  final IFranchiseModel franchise;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          franchise.name,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 30),
        ),
        backgroundColor: Colors.grey.shade300,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Modular.to.pop(),
        ),
      ),
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: InfoCardWidget(
                  firstTextLeft: "Cidade: ",
                  firstTextRight: franchise.country,
                  secondTextLeft: "Fundação: ",
                  secondTextRight: franchise.foundationYear.toString(),
                  imgUrl: franchise.franchiseImg,
                  scaleImg: 7.w,
                )),
            Container(
              height: 2.h,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade300,
            ),
            Container(
              color: Colors.grey.shade100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.h),
                  InfoWidget(
                    textLeft: "Titulos de SuperBowl ",
                    textRight: franchise.superbowlWinner.toString(),
                  ),
                  InfoWidget(textLeft: "Conferência ", textRight: franchise.conferenceName),
                  InfoWidget(
                    textLeft: "Titulos de Conferência ",
                    textRight: franchise.conferenceWinner.toString(),
                  ),
                  InfoWidget(textLeft: "Divisão ", textRight: franchise.divisionName),
                  InfoWidget(
                    textLeft: "Titulos de Divisão ",
                    textRight: franchise.divisionWinner.toString(),
                  ),
                  InfoWidget(
                    textLeft: "Estádio ",
                    textRight: franchise.stadium,
                  ),
                  InfoWidget(
                    textLeft: "Valor",
                    textRight: formatString(franchise.franchiseValue.toString()),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(height: 16.h),
                  const Center(
                    child: Text(
                      "Franchise Player",
                      style:
                          TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Nome: ",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18.sp),
                            children: [
                              TextSpan(
                                text: franchise.franchisePlayerName,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Posição: ",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18.sp),
                            children: [
                              TextSpan(
                                text: franchise.franchisePlayerPosition,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(child: Image.network(franchise.franchisePlayerImg)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
