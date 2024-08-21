import 'package:nfl_franchise_information/core/core.dart';

abstract interface class IHomeRepository {
  Future<List<IFranchiseModel>> getFranchiseOfNlfList();
}
