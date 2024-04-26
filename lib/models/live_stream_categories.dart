// ************************************ ///
// Live Categories Model post to get    ///
// ************************************ ///

class PostLiveCatogoryToGet {
  final String username;
  final String password;
  final String action;
  final String categoryId;

  PostLiveCatogoryToGet(
      {required this.username,
      required this.password,
      required this.action,
      required this.categoryId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
      'action': action,
      'categoryId': categoryId,
    };
  }

  factory PostLiveCatogoryToGet.fromMap(Map<String, dynamic> map) {
    return PostLiveCatogoryToGet(
      username: map['username'],
      password: map['password'],
      action: map['action'],
      categoryId: map['categoryId'],
    );
  }
}

// ******************************************** ///
//     Live Stream and Categories               ///
// ******************************************** ///

class LiveStreamAndCategory {
  int num;
  String name;
  String streamType;
  int streamId;
  String streamIcon;
  String? epgChannelId;
  String added;
  int isAdult;
  String? categoryId;
  List<int> categoryIds;
  dynamic customSid;
  int tvArchive;
  String directSource;
  dynamic tvArchiveDuration;

  LiveStreamAndCategory({
    required this.num,
    required this.name,
    required this.streamType,
    required this.streamId,
    required this.streamIcon,
    required this.epgChannelId,
    required this.added,
    required this.isAdult,
    required this.categoryId,
    required this.categoryIds,
    required this.customSid,
    required this.tvArchive,
    required this.directSource,
    required this.tvArchiveDuration,
  });

  factory LiveStreamAndCategory.fromMap(Map<String, dynamic> json) =>
      LiveStreamAndCategory(
        num: json["num"],
        name: json["name"],
        streamType: json["stream_type"],
        streamId: json["stream_id"],
        streamIcon: json["stream_icon"],
        epgChannelId: json["epg_channel_id"],
        added: json["added"],
        isAdult: json["is_adult"],
        categoryId: json["category_id"],
        categoryIds: List<int>.from(json["category_ids"].map((x) => x)),
        customSid: json["custom_sid"],
        tvArchive: json["tv_archive"],
        directSource: json["direct_source"],
        tvArchiveDuration: json["tv_archive_duration"],
      );

  Map<String, dynamic> toMap() => {
        "num": num,
        "name": name,
        "stream_type": streamType,
        "stream_id": streamId,
        "stream_icon": streamIcon,
        "epg_channel_id": epgChannelId,
        "added": added,
        "is_adult": isAdult,
        "category_id": categoryId,
        "category_ids": List<dynamic>.from(categoryIds.map((x) => x)),
        "custom_sid": customSid,
        "tv_archive": tvArchive,
        "direct_source": directSource,
        "tv_archive_duration": tvArchiveDuration,
      };
}
