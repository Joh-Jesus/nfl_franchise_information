import 'package:nfl_franchise_information/model/franchise.model.dart';

abstract class IHomeService {
  Future<List<FranchiseModel>> getFranchiseOfNlfList();
}
