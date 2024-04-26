import 'dart:convert';

import 'package:digiitoo_iptv_player/service/api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetLiveStreamAndCategories extends GetxController {
  Future<String> getLiveStreamAndCategoryDataFrom(
      BuildContext context, int index) async {
    String responseData = "";
    try {
      String particularId = "$getSimpleDataTableAndStreamIdApi$index";
      var response = await http.get(
        Uri.parse(particularId),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      );

      var jsonRespose = json.decode(response.body.toString());
      responseData = json.decode(response.body.toString());
      if (jsonRespose) {
        if (kDebugMode) {
          print(">>>>>>>>>>>>>>>${response.body.toString()}");
        }

        Fluttertoast.showToast(
            msg: 'Please wait here check the response here before navigation');

        Fluttertoast.showToast(
            msg: 'coded response ${response.body.toString()}');
      }
    } catch (e) {
      if (kDebugMode) {
        print("=========== ${e.toString()} =============");
      }
      Fluttertoast.showToast(msg: '$e Something wrong');
    }
    return responseData;
  }
}
