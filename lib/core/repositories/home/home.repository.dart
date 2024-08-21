import 'package:flutter_modular/flutter_modular.dart';
import 'package:nfl_franchise_information/core/core.dart';

class HomeRepository implements IHomeRepository {
  final IHomeService _homeService = Modular.get();
  final FromJson _fromJson = Modular.get();

  @override
  Future<List<IFranchiseModel>> getFranchiseOfNlfList() async {
    return await _homeService.getFranchiseOfNlfList(_fromJson);
  }
}
