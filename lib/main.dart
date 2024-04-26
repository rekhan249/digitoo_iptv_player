import 'package:digiitoo_iptv_player/screen_or_pages/cinematic_home/cinematic_home.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharePref = await SharedPreferences.getInstance();
  final username = sharePref.getString("username");
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(MyApp(username: username != null));
}

class MyApp extends StatelessWidget {
  final bool username;
  const MyApp({super.key, required this.username});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("username");
    }
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digiitoo IPTV player',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
        useMaterial3: true,
      ),
      home: username ? const CinematicHome() : const SplashScreen(),
    );
  }
}
