import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nfl_franchise_information/core/core.dart';
import 'package:nfl_franchise_information/modules/modules.dart';

class HomeStore extends ValueNotifier<HomeState> {
  HomeStore() : super(HomeStateLoading());

  final List<IFranchiseModel> listOfFranchisesInNfl = [];

  final IHomeRepository _homeRepository = Modular.get();

  void getFranchiseOfNlfList() {
    value = HomeStateLoading();

    _homeRepository.getFranchiseOfNlfList().then((franchiseList) {
      listOfFranchisesInNfl.addAll(franchiseList);
      value = HomeStateSuccess(listOfFranchisesInNfl: franchiseList);
    }).onError((error, stackTrace) {
      value = HomeStateFailure(message: error.toString());
    });
  }
}
