// ignore_for_file: public_member_api_docs, sort_constructors_first
class FranchiseModel {
  final String name;
  FranchiseModel({
    required this.name,
  });

  factory FranchiseModel.fromJson(Map<String, dynamic> json) => FranchiseModel(name: json["name"]);
}
