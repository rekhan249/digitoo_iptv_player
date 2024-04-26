/// ******************************************** ///
///  Login model for post api data               ///
/// ******************************************** ///
class LoginModel {
  String? anyName;
  final String username;
  final String password;
  final String type;

  LoginModel(this.anyName,
      {required this.username, required this.password, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyName': anyName,
      'username': username,
      'password': password,
      'type': type,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      map['anyName'] != null ? map['anyName'] as String : null,
      username: map['username'],
      password: map['password'],
      type: map['type'],
    );
  }
}

/// ******************************************** ///
///  Login model for post api data               ///
/// ******************************************** ///

class LoginResponse {
  LoginResponse({
    required this.userInfo,
    required this.serverInfo,
  });

  final UserInfo? userInfo;
  final ServerInfo? serverInfo;

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      userInfo: json["user_info"] == null
          ? null
          : UserInfo.fromJson(json["user_info"]),
      serverInfo: json["server_info"] == null
          ? null
          : ServerInfo.fromJson(json["server_info"]),
    );
  }
}

class ServerInfo {
  ServerInfo({
    required this.url,
    required this.port,
    required this.httpsPort,
    required this.serverProtocol,
    required this.rtmpPort,
    required this.timezone,
    required this.timestampNow,
    required this.timeNow,
    required this.process,
  });

  final String? url;
  final String? port;
  final String? httpsPort;
  final String? serverProtocol;
  final String? rtmpPort;
  final String? timezone;
  final int? timestampNow;
  final DateTime? timeNow;
  final bool? process;

  factory ServerInfo.fromJson(Map<String, dynamic> json) {
    return ServerInfo(
      url: json["url"],
      port: json["port"],
      httpsPort: json["https_port"],
      serverProtocol: json["server_protocol"],
      rtmpPort: json["rtmp_port"],
      timezone: json["timezone"],
      timestampNow: json["timestamp_now"],
      timeNow: DateTime.tryParse(json["time_now"] ?? ""),
      process: json["process"],
    );
  }
}

class UserInfo {
  UserInfo({
    required this.username,
    required this.password,
    required this.message,
    required this.auth,
    required this.status,
    required this.expDate,
    required this.isTrial,
    required this.activeCons,
    required this.createdAt,
    required this.maxConnections,
    required this.allowedOutputFormats,
  });

  final String? username;
  final String? password;
  final String? message;
  final int? auth;
  final String? status;
  final String? expDate;
  final String? isTrial;
  final String? activeCons;
  final String? createdAt;
  final String? maxConnections;
  final List<String> allowedOutputFormats;

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      username: json["username"],
      password: json["password"],
      message: json["message"],
      auth: json["auth"],
      status: json["status"],
      expDate: json["exp_date"],
      isTrial: json["is_trial"],
      activeCons: json["active_cons"],
      createdAt: json["created_at"],
      maxConnections: json["max_connections"],
      allowedOutputFormats: json["allowed_output_formats"] == null
          ? []
          : List<String>.from(json["allowed_output_formats"]!.map((x) => x)),
    );
  }
}
