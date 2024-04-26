// ************************************ ///
// Live Categories Model For post Data   ///
// ************************************ ///

class PostLiveCatogoryGetData {
  final String username;
  final String password;
  final String action;

  PostLiveCatogoryGetData(
      {required this.username, required this.password, required this.action});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
      'action': action,
    };
  }

  factory PostLiveCatogoryGetData.fromMap(Map<String, dynamic> map) {
    return PostLiveCatogoryGetData(
      username: map['username'],
      password: map['password'],
      action: map['action'],
    );
  }
}

/// ************************************ ///
/// Live Categories Model For get Data   ///
/// ************************************ ///
class LiveCategories {
  final String? categoryId;
  final String? categoryName;
  final int? parentId;

  LiveCategories({
    required this.categoryId,
    required this.categoryName,
    required this.parentId,
  });

  factory LiveCategories.fromMap(Map<String, dynamic> map) {
    return LiveCategories(
      categoryId: map["category_id"],
      categoryName: map["category_name"],
      parentId: map["parent_id"],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': categoryId,
      'categoryName': categoryName,
      'parentId': parentId,
    };
  }
}
