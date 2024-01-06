import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nfl_franchise_information/modules/home/home_bloc/event/home.event.dart';
import 'package:nfl_franchise_information/modules/home/home_bloc/state/home.state.dart';
import 'package:nfl_franchise_information/modules/home/service/home.service.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeStateLoading()) {
    on<HomeEventGetFranchiseList>((event, emit) async {
      emit(HomeStateLoading());
      emit(HomeStateSuccess(
          listOfFranchisesInNfl: await Modular.get<HomeService>().getFranchiseOfNlfList()));
    });
  }
}
