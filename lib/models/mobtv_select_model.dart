// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:get/get.dart';

class MobTvSelectionModel {
  final int id;
  final String title;

  MobTvSelectionModel({required this.id, required this.title});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    };
  }

  factory MobTvSelectionModel.fromMap(Map<String, dynamic> map) {
    return MobTvSelectionModel(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}

List<MobTvSelectionModel> mobTvSelectionModelList = [
  MobTvSelectionModel(id: 0, title: "Mobile"),
  MobTvSelectionModel(id: 1, title: "TV")
];

class MobTvController extends GetxController {
  MobTvSelectionModel? mobTvSelectionModel;

  seletionTvOrMobile(MobTvSelectionModel value) {
    mobTvSelectionModel = value;
    update();
  }
}

/* ***************************************** 
   Stream model and Stream getxController 
  ***************************************** */

class StreamFormatModel {
  final int id;
  final String title;

  StreamFormatModel({required this.id, required this.title});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    };
  }

  factory StreamFormatModel.fromMap(Map<String, dynamic> map) {
    return StreamFormatModel(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}

List<StreamFormatModel> streamFormatModelList = [
  StreamFormatModel(id: 0, title: "Defaults"),
  StreamFormatModel(id: 1, title: "MPEGTS(.ts)"),
  StreamFormatModel(id: 2, title: "HLS(.m3u8)"),
];

class StreamFormatController extends GetxController {
  StreamFormatModel? streamFormatModel;

  seletionstreamFormat(StreamFormatModel value) {
    streamFormatModel = value;
    update();
  }
}

/* *************************************************
   Auto-Update model and Auto-Update getxController 
  ************************************************* */

class AutoUpdateModel {
  final int id;
  final String title;

  AutoUpdateModel({required this.id, required this.title});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    };
  }

  factory AutoUpdateModel.fromMap(Map<String, dynamic> map) {
    return AutoUpdateModel(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}

List<AutoUpdateModel> autoUpdateModelList = [
  AutoUpdateModel(id: 0, title: "1"),
  AutoUpdateModel(id: 1, title: "2"),
  AutoUpdateModel(id: 2, title: "3"),
  AutoUpdateModel(id: 3, title: "4"),
  AutoUpdateModel(id: 4, title: "5"),
  AutoUpdateModel(id: 5, title: "6"),
  AutoUpdateModel(id: 6, title: "7"),
];

class AutoUpdateController extends GetxController {
  AutoUpdateModel? autoUpdateModel;

  autoUpdationValueUpdate(AutoUpdateModel? value) {
    autoUpdateModel = value;
    update();
  }
}

/* ************************************************* 
   time format model and time format getxController 
  ************************************************** */
class TimeFormatModel {
  final int id;
  final String title;

  TimeFormatModel({required this.id, required this.title});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    };
  }

  factory TimeFormatModel.fromMap(Map<String, dynamic> map) {
    return TimeFormatModel(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TimeFormatModel.fromJson(String source) =>
      TimeFormatModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<TimeFormatModel> timeFormatModelList = [
  TimeFormatModel(id: 0, title: "12 Hours Format"),
  TimeFormatModel(id: 1, title: "24 Hours Format"),
];

class TimeFormatController extends GetxController {
  TimeFormatModel? timeFormatModel;

  seletionTimeFormat(TimeFormatModel value) {
    timeFormatModel = value;
    update();
  }
}

/* *********************************************************
   Player Settings Model and Player Settings getxController 
  ********************************************************** */

class PlayerSettingsModel {
  final int id;
  final String title;

  PlayerSettingsModel({required this.id, required this.title});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    };
  }

  factory PlayerSettingsModel.fromMap(Map<String, dynamic> map) {
    return PlayerSettingsModel(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PlayerSettingsModel.fromJson(String source) =>
      PlayerSettingsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<PlayerSettingsModel> playerSettingsModelList = [
  PlayerSettingsModel(id: 0, title: "Hardware Decoder"),
  PlayerSettingsModel(id: 1, title: "Software Decoder"),
];

class PlayerSettingsController extends GetxController {
  PlayerSettingsModel? playerSettingsModel;

  seletionPlayerSettings(PlayerSettingsModel value) {
    playerSettingsModel = value;
    update();
  }
}

class PlayerSettingsForRadio {
  final int id;
  final String title;

  PlayerSettingsForRadio({required this.id, required this.title});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    };
  }

  factory PlayerSettingsForRadio.fromMap(Map<String, dynamic> map) {
    return PlayerSettingsForRadio(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PlayerSettingsForRadio.fromJson(String source) =>
      PlayerSettingsForRadio.fromMap(
          json.decode(source) as Map<String, dynamic>);
}

List<PlayerSettingsForRadio> playerSettingsForRadioList = [
  PlayerSettingsForRadio(id: 0, title: "1"),
  PlayerSettingsForRadio(id: 1, title: "2"),
  PlayerSettingsForRadio(id: 2, title: "3"),
  PlayerSettingsForRadio(id: 3, title: "4"),
  PlayerSettingsForRadio(id: 4, title: "5"),
  PlayerSettingsForRadio(id: 5, title: "10"),
  PlayerSettingsForRadio(id: 6, title: "20"),
  PlayerSettingsForRadio(id: 5, title: "30"),
  PlayerSettingsForRadio(id: 6, title: "40"),
  PlayerSettingsForRadio(id: 5, title: "50"),
  PlayerSettingsForRadio(id: 6, title: "100"),
];

class PlayerSettingsForRadioController extends GetxController {
  PlayerSettingsForRadio? playerSettingsForRadio;

  seletionPlayerSettingsForRadio(PlayerSettingsForRadio value) {
    playerSettingsForRadio = value;
    update();
  }
}
