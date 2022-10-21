class DataModel {
  String? totalItems;
  String? totalGroups;
  List<Groups>? groups;

  DataModel({this.totalItems, this.totalGroups, this.groups});

  DataModel.fromJson(Map<String, dynamic> json) {
    totalItems = json['total_items'];
    totalGroups = json['total_groups'];
    if (json['groups'] != null) {
      groups = <Groups>[];
      json['groups'].forEach((v) {
        groups!.add(new Groups.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_items'] = this.totalItems;
    data['total_groups'] = this.totalGroups;
    if (this.groups != null) {
      data['groups'] = this.groups!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Groups {
  String? key;
  String? itemCount;
  List<Items>? items;

  Groups({this.key, this.itemCount, this.items});

  Groups.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    itemCount = json['item_count'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['item_count'] = this.itemCount;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? productAliasName;

  Items(
      {this.productAliasName});

  Items.fromJson(Map<String, dynamic> json) {
    productAliasName = json['ProductAliasName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductAliasName'] = this.productAliasName;
    return data;
  }
}