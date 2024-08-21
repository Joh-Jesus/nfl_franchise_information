// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:nfl_franchise_information/core/core.dart';

abstract base class IFranchiseModel {
  final String name;
  final int foundationYear;
  final String country;
  final String stadium;
  final String conferenceName;
  final String divisionName;
  final String franchisePlayerName;
  final String franchiseImg;
  final String franchisePlayerImg;
  final String franchisePlayerPosition;
  final int divisionWinner;
  final int conferenceWinner;
  final int superbowlWinner;
  final int franchiseValue;

  IFranchiseModel({
    required this.name,
    required this.foundationYear,
    required this.country,
    required this.stadium,
    required this.conferenceName,
    required this.divisionName,
    required this.franchisePlayerName,
    required this.franchiseImg,
    required this.franchisePlayerImg,
    required this.franchisePlayerPosition,
    required this.divisionWinner,
    required this.conferenceWinner,
    required this.superbowlWinner,
    required this.franchiseValue,
  });
}

abstract interface class FromJson<T> {
  T format(Map<String, dynamic> json);
}

class FranchiseModelFromJson implements FromJson<IFranchiseModel> {
  @override
  IFranchiseModel format(Map<String, dynamic> json) {
    return FranchiseModel(
      name: json["name"],
      foundationYear: json["foundation"],
      country: json["state"],
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
}
