import 'package:nfl_franchise_information/core/core.dart';

class FranchiseFromJson implements FromJson<IFranchiseModel> {
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
