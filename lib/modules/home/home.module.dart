import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nfl_franchise_information/modules/home/service/home.service.dart';
import 'package:nfl_franchise_information/modules/home/view/franchise_info/franchise_info.view.dart';
import 'package:nfl_franchise_information/modules/home/view/home.view.dart';
import 'package:nfl_franchise_information/utils/routes.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.add<FirebaseFirestore>(() => FirebaseFirestore.instance);
    i.addLazySingleton<HomeService>(HomeService.new);
  }

  @override
  void routes(r) {
    r.child(homeRoute, child: (context) => const HomeView());
    r.child(franchiseRoute, child: (context) => FranchiseInfoWidget(franchise: r.args.data));
  }
}
