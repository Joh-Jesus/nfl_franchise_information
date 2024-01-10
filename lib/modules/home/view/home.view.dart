import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nfl_franchise_information/modules/home/home_bloc/event/home.event.dart';
import 'package:nfl_franchise_information/modules/home/home_bloc/home.bloc.dart';
import 'package:nfl_franchise_information/modules/home/home_bloc/state/home.state.dart';
import 'package:nfl_franchise_information/modules/home/view/widgets/home_success.widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    Modular.get<HomeBloc>().add(HomeEventGetFranchiseList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Todas as Franquias",
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
          bloc: Modular.get<HomeBloc>(),
          builder: (context, state) {
            return Column(
              children: [
                Visibility(
                  visible: state is HomeStateSuccess,
                  child: HomeSuccessWidget(
                      listOfFranchisesInNfl:
                          state is HomeStateSuccess ? state.listOfFranchisesInNfl : []),
                ),
                Visibility(
                  visible: state is HomeStateLoading,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              ],
            );
          }),
    );
  }
}
