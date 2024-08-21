import 'package:nfl_franchise_information/core/core.dart';

abstract interface class IHomeService {
  Future<List<IFranchiseModel>> getFranchiseOfNlfList(FromJson fromJson);
}
