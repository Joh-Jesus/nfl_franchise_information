import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nfl_franchise_information/core/core.dart';
import 'package:nfl_franchise_information/modules/modules.dart';
import 'package:nfl_franchise_information/utils/routes.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.add<FirebaseFirestore>(() => FirebaseFirestore.instance);
    i.addLazySingleton<IHomeService>(HomeService.new);
    i.addLazySingleton<IHomeRepository>(HomeRepository.new);
    i.addLazySingleton<HomeStore>(HomeStore.new);
    i.addLazySingleton<FromJson>(FranchiseFromJson.new);
  }

  @override
  void routes(r) {
    r.child(homeRoute, child: (context) => const HomeView());
    r.child(franchiseRoute, child: (context) => FranchiseInfoWidget(franchise: r.args.data));
  }
}
