import 'package:flutter_modular/flutter_modular.dart';
import 'package:go_router/go_router.dart';
import 'package:nfl_franchise_information/modules/home/home.dart';
import 'package:nfl_franchise_information/modules/modules.dart';
import 'package:nfl_franchise_information/utils/routes.dart';

final routes = GoRouter(
  initialLocation: homeRoute,
  routes: [
    GoRoute(
      path: homeRoute,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
        path: "$franchiseRoute/:name",
        builder: (context, state) {
          final homeStore = Modular.get<HomeStore>();
          final franchise = homeStore.listOfFranchisesInNfl.firstWhere(
            (franchise) {
              return franchise.name == state.pathParameters['name'];
            },
          );
          return FranchiseInfoWidget(
            franchise: franchise,
          );
        }),
  ],
);
