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
