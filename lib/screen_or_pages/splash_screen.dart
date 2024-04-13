import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/selection_mobile_tv.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (_) => const MobileTVSelectionSecreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: sizeScreen.width,
        height: sizeScreen.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/splash.jpeg",
                ),
                fit: BoxFit.fill)),
        child: const Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 40, bottom: 16),
            child: Text(
              splashLink,
              style: TextStyle(color: blackColors, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
