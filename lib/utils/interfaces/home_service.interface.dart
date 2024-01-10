import 'package:nfl_franchise_information/utils/interfaces/franchise_model.interface.dart';

abstract interface class IHomeService {
  Future<List<IFranchiseModel>> getFranchiseOfNlfList();
}
