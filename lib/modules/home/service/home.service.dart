import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nfl_franchise_information/model/franchise.model.dart';
import 'package:nfl_franchise_information/utils/interfaces/home_service.interface.dart';

class HomeService extends IHomeService {
  final FirebaseFirestore instance;

  HomeService({required this.instance});
  @override
  Future<List<FranchiseModel>> getFranchiseOfNlfList() async {
    final reponse = await instance.doc("franchises/0").get();

    final responseList = reponse.data();
    List<FranchiseModel> returnList = <FranchiseModel>[];
    for (var franchise in responseList?["all_franchises"]) {
      returnList.add(FranchiseModel.fromJson(franchise));
    }
    return returnList;
  }
}
