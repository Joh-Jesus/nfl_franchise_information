import 'package:flutter_modular/flutter_modular.dart';
import 'package:nfl_franchise_information/modules/home/home.module.dart';
import 'package:nfl_franchise_information/modules/home/home_bloc/home.bloc.dart';
import 'package:nfl_franchise_information/utils/routes.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<HomeBloc>(
      HomeBloc.new,
      config: BindConfig(onDispose: (bloc) => bloc.close()),
    );
  }

  @override
  void routes(r) {
    r.module(initRoute, module: HomeModule());
  }
}
