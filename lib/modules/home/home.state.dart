import 'package:nfl_franchise_information/core/core.dart';

sealed class HomeState {}

class HomeStateLoading extends HomeState {}

class HomeStateSuccess extends HomeState {
  final List<IFranchiseModel> listOfFranchisesInNfl;
  HomeStateSuccess({
    required this.listOfFranchisesInNfl,
  });
}

class HomeStateFailure extends HomeState {
  final String message;
  HomeStateFailure({required this.message});
}
