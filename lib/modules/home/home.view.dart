import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nfl_franchise_information/modules/modules.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Modular.get<HomeStore>().getFranchiseOfNlfList();
    });
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
      body: ValueListenableBuilder(
          valueListenable: Modular.get<HomeStore>(),
          builder: (context, state, child) {
            return switch (state) {
              HomeStateFailure(message: final message) => Text(message),
              HomeStateLoading() => const Center(child: CircularProgressIndicator()),
              HomeStateSuccess(listOfFranchisesInNfl: final listOfFranchisesInNfl) =>
                HomeSuccessWidget(listOfFranchisesInNfl: listOfFranchisesInNfl),
            };
          }),
    );
  }
}
