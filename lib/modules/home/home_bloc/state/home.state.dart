// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:nfl_franchise_information/utils/interfaces/franchise_model.interface.dart';

abstract class HomeState {}

class HomeStateLoading extends HomeState {}

class HomeStateSuccess extends HomeState {
  final List<IFranchiseModel> listOfFranchisesInNfl;
  HomeStateSuccess({
    required this.listOfFranchisesInNfl,
  });
}
