import 'dart:convert';
import 'package:digiitoo_iptv_player/models/live_category_model.dart';
import 'package:digiitoo_iptv_player/service/api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetLiveTvCategories extends GetxController {
  Future<List<LiveCategories?>> getLiveTvCategoriesDataFrom(
      BuildContext context) async {
    List<LiveCategories?> liveCategoriesList = [];
    try {
      // final SharedPreferences sharePref = await SharedPreferences.getInstance();
      // var username = sharePref.getString("username");
      // var password = sharePref.getString("password");
      // PostLiveCatogoryGetData postLiveCatogoryGetData = PostLiveCatogoryGetData(
      //     username: username!,
      //     password: password!,
      //     action: "get_live_categories");
      var response = await http.get(
        Uri.parse(liveCategoriesApi),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      );

      var jsonRespose = json.decode(response.body.toString());
      if ((jsonRespose as List).isNotEmpty) {
        for (int i = 0; i < (jsonRespose).length; i++) {
          LiveCategories liveCategories =
              LiveCategories.fromMap(jsonRespose[i]);

          liveCategoriesList.add(liveCategories);
        }
        if (kDebugMode) {
          // print(">>>>>>>>>>>>>>>${response.body.toString()}");
        }

        // Fluttertoast.showToast(
        //     msg:
        //         'Please wait here check the response here before navigation${liveCategoriesList.length}');

        // Fluttertoast.showToast(
        //     msg: 'coded response ${response.body.toString()}');
      }
    } catch (e) {
      if (kDebugMode) {
        // print("=========== ${e.toString()} =============");
      }
      Fluttertoast.showToast(msg: '$e Something wrong');
    }
    return liveCategoriesList;
  }
}
