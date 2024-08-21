import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nfl_franchise_information/core/core.dart';
import 'package:nfl_franchise_information/utils/constantes.dart';

class HomeService implements IHomeService {
  final FirebaseFirestore instance;

  HomeService({required this.instance});
  @override
  Future<List<IFranchiseModel>> getFranchiseOfNlfList(FromJson fromJson) async {
    final reponse = await instance.doc("$collectionName/$docNumber").get();

    final responseList = reponse.data();

    List<IFranchiseModel> returnList = <IFranchiseModel>[];
    for (var franchise in responseList?[listKeyMap]) {
      returnList.add(fromJson.format(franchise));
    }
    return returnList;
  }
}
