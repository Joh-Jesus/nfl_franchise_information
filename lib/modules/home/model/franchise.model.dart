// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:nfl_franchise_information/utils/interfaces/franchise_model.interface.dart';

class FranchiseModel extends IFranchiseModel {
  FranchiseModel({
    required super.name,
    required super.foundationYear,
    required super.state,
    required super.stadium,
    required super.conferenceName,
    required super.divisionName,
    required super.franchisePlayerName,
    required super.franchiseImg,
    required super.franchisePlayerImg,
    required super.divisionWinner,
    required super.conferenceWinner,
    required super.superbowlWinner,
    required super.franchiseValue,
    required super.franchisePlayerPosition,
  });

  factory FranchiseModel.fromJson(Map<String, dynamic> json) => FranchiseModel(
        name: json["name"],
        foundationYear: json["foundation"],
        state: json["state"],
        stadium: json["stadium"],
        conferenceName: json["conference"],
        divisionName: json["division"],
        franchisePlayerName: json["franchise_player"],
        franchiseImg: json["team_img"],
        franchisePlayerImg: json["player_img"],
        divisionWinner: json["division_winner"],
        conferenceWinner: json["conference_winner"],
        superbowlWinner: json["superbowl"],
        franchiseValue: json["franchise_value"],
        franchisePlayerPosition: json["player_position"],
      );
}
