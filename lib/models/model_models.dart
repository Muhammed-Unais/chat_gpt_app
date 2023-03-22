class ModelModels {
  final String id;
  final int created;
  final String root;

  ModelModels({required this.id, required this.created, required this.root});

  factory ModelModels.fromJson(Map<String, dynamic> json) =>
      ModelModels(id: json["id"], created: json["root"], root: json["created"]);

  static List<ModelModels> fromSnapShot(List snapShot) {
    return snapShot.map((data) => ModelModels.fromJson(data)).toList();
  }
}
