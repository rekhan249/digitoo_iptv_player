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

/* ***************************************** 
   Auto-Update model and Auto-Update getxController 
  ***************************************** */

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

  autoUpdationValue(AutoUpdateModel? value) {
    autoUpdateModel = value;
    update();
  }
}
