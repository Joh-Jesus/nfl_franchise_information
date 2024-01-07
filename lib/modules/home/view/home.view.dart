import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nfl_franchise_information/modules/home/home_bloc/event/home.event.dart';
import 'package:nfl_franchise_information/modules/home/home_bloc/home.bloc.dart';
import 'package:nfl_franchise_information/modules/home/home_bloc/state/home.state.dart';
import 'package:nfl_franchise_information/utils/interfaces/franchise_model.interface.dart';

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
        title: const Text(
          "Lista das Franquias",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.red,
        leading: const Icon(Icons.arrow_back),
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
              return FranchiseWidget(franchise: listOfFranchisesInNfl[index]);
            },
          ),
        ),
      ),
    );
  }
}

class FranchiseWidget extends StatelessWidget {
  const FranchiseWidget({super.key, required this.franchise});
  final IFranchiseModel franchise;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
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
                    width: 48,
                    height: 48,
                  ),
                  Text(franchise.name),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Estado: ${franchise.state}"),
                  Text("Conferência: ${franchise.conferenceName}"),
                  Text("Divisão: ${franchise.divisionName}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
