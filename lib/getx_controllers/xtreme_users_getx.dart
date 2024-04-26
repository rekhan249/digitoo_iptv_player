// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:digiitoo_iptv_player/models/auth_model/login_model.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/cinematic_home/cinematic_home.dart';
import 'package:digiitoo_iptv_player/service/api_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class XtreamUserController extends GetxController {
  var anyName = TextEditingController();
  var username = TextEditingController();
  var password = TextEditingController();
  var type = TextEditingController();
  void submissionApiForLogin(BuildContext context) async {
    try {
      final SharedPreferences sharePref = await SharedPreferences.getInstance();
      LoginModel loginModel = LoginModel(anyName.text,
          username: username.text, password: password.text, type: type.text);
      var response = await http.post(Uri.parse(loginApi),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
          body: json.encode(loginModel.toMap()));
      // print("++++++++++++++++++++++ works fine ${response.body.toString()}");
      Fluttertoast.showToast(
          msg:
              ' ++++++++++++++++++++++  Response but no status code ${response.body.toString()}  ++++++++++++++++++++++');

      var jsonRespose = json.decode(response.body.toString());
      if (jsonRespose["user_info"]["status"] == "Expired" ||
          jsonRespose["user_info"]["status"] == "Active") {
        LoginResponse loginResponse = LoginResponse.fromJson(jsonRespose);
        sharePref.setString(
            "username", loginResponse.userInfo!.username.toString());
        sharePref.setString(
            "password", loginResponse.userInfo!.password.toString());
        if (kDebugMode) {
          print(">>>>>>>>>>>>>>>${loginResponse.userInfo!.username}");
        }
        // print("===================== ${response.body.toString()}");
        Future.delayed(
          const Duration(seconds: 1),
          () {
            Fluttertoast.showToast(
                msg:
                    'Please wait here check the response here before navigation');
            Fluttertoast.showToast(
                msg: 'coded response ${response.body.toString()}');
          },
        );
        Future.delayed(
          const Duration(seconds: 8),
          () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CinematicHome()));
          },
        );
      }
    } catch (e) {
      if (kDebugMode) {
        print("=========== ${e.toString()} =============");
      }
      Fluttertoast.showToast(msg: '$e Account is not Login yet');
    }
  }
}
