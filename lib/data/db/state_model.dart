class StateModel {
  final int id;
  final int money;

  const StateModel({this.id, this.money});

  factory StateModel.fromJson(Map<String, dynamic> json) =>
      StateModel(id: json['id'], money: json['money']);
}
