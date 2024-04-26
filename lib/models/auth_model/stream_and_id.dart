// ************************************ ///
// Live Categories Model post to get    ///
// ************************************ ///

class PostLiveCatogoryToGetData {
  final String username;
  final String password;
  final String action;
  final String streamId;

  PostLiveCatogoryToGetData(
      {required this.username,
      required this.password,
      required this.action,
      required this.streamId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
      'action': action,
      'streamId': streamId,
    };
  }

  factory PostLiveCatogoryToGetData.fromMap(Map<String, dynamic> map) {
    return PostLiveCatogoryToGetData(
      username: map['username'],
      password: map['password'],
      action: map['action'],
      streamId: map['streamId'],
    );
  }
}
