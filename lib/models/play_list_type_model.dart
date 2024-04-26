import 'package:digiitoo_iptv_player/screen_or_pages/xtream_code_for_users.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayListTypeModel {
  final int id;
  final String title;

  PlayListTypeModel({required this.id, required this.title});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    };
  }

  factory PlayListTypeModel.fromMap(Map<String, dynamic> map) {
    return PlayListTypeModel(
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }
}

List<PlayListTypeModel> playListTypeModelList = [
  PlayListTypeModel(id: 0, title: "FILE"),
  PlayListTypeModel(id: 1, title: "M3U URL"),
  PlayListTypeModel(id: 2, title: "MAC"),
];

class FileM3UMacController extends GetxController {
  PlayListTypeModel? playListTypeModel;
  selectFileOrM3UorMac(PlayListTypeModel value, BuildContext context) {
    playListTypeModel = value;
    update();
    if (playListTypeModel!.id == 1) {
      Future.delayed(
        const Duration(seconds: 1),
        () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const XtreamCodeForUser()));
        },
      );
    }
  }
}
