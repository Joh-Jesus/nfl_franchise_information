import 'package:flutter_modular/flutter_modular.dart';
import 'package:nfl_franchise_information/modules/modules.dart';
import 'package:nfl_franchise_information/utils/routes.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.module(initRoute, module: HomeModule());
  }
}
