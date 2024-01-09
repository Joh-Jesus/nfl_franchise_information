import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nfl_franchise_information/modules/home/view/widgets/franchise.widget.dart';
import 'package:nfl_franchise_information/utils/interfaces/franchise_model.interface.dart';
import 'package:nfl_franchise_information/utils/routes.dart';

class HomeSuccessWidget extends StatelessWidget {
  const HomeSuccessWidget({super.key, required this.listOfFranchisesInNfl});
  final List<IFranchiseModel> listOfFranchisesInNfl;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Expanded(
          child: ListView.builder(
            itemCount: listOfFranchisesInNfl.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: FranchiseWidget(franchise: listOfFranchisesInNfl[index]),
                onTap: () => Modular.to.pushNamed(
                  "$initRoute$franchiseRoute",
                  arguments: listOfFranchisesInNfl[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
