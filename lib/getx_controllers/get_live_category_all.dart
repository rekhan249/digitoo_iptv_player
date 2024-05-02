import 'dart:convert';
import 'package:digiitoo_iptv_player/models/live_stream_categories.dart';
import 'package:digiitoo_iptv_player/service/api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetLiveStreamAndCategories extends GetxController {
  Future<List<LiveStreamAndCategory?>> getLiveStreamAndCategoryDataFrom(
      BuildContext context, String categoryId) async {
    List<LiveStreamAndCategory?> liveCategoriesList = [];
    try {
      String particularId = "$getLiveStreamsAndCategoryIdApi$categoryId";
      var response = await http.get(
        Uri.parse(particularId),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      );

      var jsonRespose = json.decode(response.body.toString());
      if ((jsonRespose as List).isNotEmpty) {
        for (int i = 0; i < (jsonRespose).length; i++) {
          LiveStreamAndCategory liveCategories =
              LiveStreamAndCategory.fromMap(jsonRespose[i]);

          liveCategoriesList.add(liveCategories);
        }
        if (kDebugMode) {
          print(">>>>>>>>>>>>>>>${response.body.toString()}");
        }

        Fluttertoast.showToast(
            msg:
                'Please wait here check the response here before navigation${liveCategoriesList.length}');

        Fluttertoast.showToast(
            msg: 'coded response ${response.body.toString()}');
      }
    } catch (e) {
      if (kDebugMode) {
        print("=========== ${e.toString()} =============");
      }
      Fluttertoast.showToast(msg: '$e Something wrong');
    }
    return liveCategoriesList;
  }
}

/// get All Data categories from get all category&streamid

class GetLiveStreamAndCategoriesAll extends GetxController {
  Future<List<LiveStreamAndCategory?>> getLiveStreamAndCategoryAADataFrom(
      BuildContext context) async {
    List<LiveStreamAndCategory?> liveCategoriesList = [];
    try {
      var response = await http.get(
        Uri.parse(getLiveStreamsAndCategoryIdApi),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      );

      var jsonRespose = json.decode(response.body.toString());
      if ((jsonRespose as List).isNotEmpty) {
        for (int i = 0; i < (jsonRespose).length; i++) {
          LiveStreamAndCategory liveCategories =
              LiveStreamAndCategory.fromMap(jsonRespose[i]);

          liveCategoriesList.add(liveCategories);
        }
        if (kDebugMode) {
          print(">>>>>>>>>>>>>>>${response.body.toString()}");
        }

        Fluttertoast.showToast(
            msg:
                'Please wait here check the response here before navigation${liveCategoriesList.length}');

        Fluttertoast.showToast(
            msg: 'coded response ${response.body.toString()}');
      }
    } catch (e) {
      if (kDebugMode) {
        print("=========== ${e.toString()} =============");
      }
      Fluttertoast.showToast(msg: '$e Something wrong');
    }
    return liveCategoriesList;
  }
}
