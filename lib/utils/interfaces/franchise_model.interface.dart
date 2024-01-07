// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class IFranchiseModel {
  final String name;
  final int foundationYear;
  final String state;
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
    required this.state,
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
