class DropdownItemModel {
  dynamic id;
  String? title;

  DropdownItemModel(String s, {this.id, this.title});

  DropdownItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = title;
    return data;
  }
}
