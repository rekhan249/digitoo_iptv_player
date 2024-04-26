import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/cinematic_home/live_cinematice.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/cinematic_home/movies/cinemania.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/egp_with_live/egp_with_live_page.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/series/series_main.dart';
import 'package:digiitoo_iptv_player/utils/setting_of_apps/app_settings_app.dart';
import 'package:digiitoo_iptv_player/widgets/custom_container_cinematic.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CinematicHome extends StatelessWidget {
  const CinematicHome({super.key});

  @override
  Widget build(BuildContext context) {
    final Size sizeing = MediaQuery.of(context).size;
    final dateTimeValue = DateTime.now();
    final formatDate = DateFormat("HH:MM MMM dd,yyyy").format(dateTimeValue);
    return Scaffold(
      body: Container(
        height: sizeing.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/imageback.jpeg",
                ),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(),
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 35,
                            margin: const EdgeInsets.only(left: 10, right: 05),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                              "assets/images/logo.jpeg",
                            ))),
                          ),
                          const Text(
                            deviceOptions,
                            style: TextStyle(
                                color: whiteColors,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            formatDate.toString(),
                            style: const TextStyle(
                                color: whiteColors, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: "Master search",
                                  hintStyle: TextStyle(color: whiteColors),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: whiteColors,
                                  ),
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(right: 7),
                              child:
                                  const Icon(Icons.radio, color: whiteColors)),
                          Container(
                              margin: const EdgeInsets.only(right: 7),
                              child: const Icon(Icons.notifications,
                                  color: whiteColors)),
                          Container(
                              margin: const EdgeInsets.only(right: 7),
                              child:
                                  const Icon(Icons.person, color: whiteColors)),
                          Container(
                              margin: const EdgeInsets.only(right: 7),
                              child: const Icon(Icons.video_camera_back_rounded,
                                  color: whiteColors)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AppSettingForApp()));
                            },
                            child: Container(
                                margin: const EdgeInsets.only(right: 7),
                                child: const Icon(Icons.settings,
                                    color: whiteColors)),
                          ),
                          Container(
                              margin: const EdgeInsets.only(right: 7),
                              child:
                                  const Icon(Icons.group, color: whiteColors)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomContainerOfCineamtic(
                      horizont: 70,
                      verti: 45,
                      sizvalue: 80,
                      fontValue: 16,
                      textfont1: 14,
                      textfont2: 14,
                      rightpad: 35,
                      leftpad: 45,
                      toppad: 12,
                      text1: "LIVE TV",
                      text2: "Download",
                      icon1: Icons.live_tv,
                      icon2: Icons.arrow_downward,
                      color1: greenColors,
                      color2: blueColors,
                      onPressed: () {},
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LiveCinemania()));
                      },
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: CustomContainerOfCineamtic(
                                horizont: 70,
                                verti: 30,
                                sizvalue: 60,
                                fontValue: 16,
                                textfont1: 14,
                                textfont2: 14,
                                rightpad: 35,
                                leftpad: 35,
                                toppad: 12,
                                text1: "MOVIES",
                                text2: "Download",
                                icon1: Icons.live_tv,
                                icon2: Icons.arrow_downward,
                                color1: redColors,
                                color2: yellowColors,
                                onPressed: () {},
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const MoviesCinematic()));
                                },
                              ),
                            ),
                            CustomContainerOfCineamtic(
                              horizont: 70,
                              verti: 30,
                              sizvalue: 60,
                              fontValue: 16,
                              textfont1: 14,
                              textfont2: 14,
                              rightpad: 35,
                              leftpad: 35,
                              toppad: 12,
                              text1: "SERIES",
                              text2: "Download",
                              icon1: Icons.live_tv,
                              icon2: Icons.arrow_downward,
                              color1: purpleColors,
                              color2: purpleLightColors,
                              onPressed: () {},
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            const SeriesCinematic()));
                              },
                            ),
                          ],
                        ),
                        kGapsFifteen,
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            const EGPWithLivePage()));
                              },
                              child: const CustomeMaineContainer(
                                  icons: Icons.book, text: 'LIVE WITH EPG'),
                            ),
                            const SizedBox(width: 5),
                            const CustomeMaineContainer(
                                icons: Icons.dashboard_customize,
                                text: 'MULTI SCREEN'),
                            const SizedBox(width: 5),
                            const CustomeMaineContainer(
                                icons: Icons.history_sharp, text: ' CATCH UP ')
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Expiration : ${DateFormat("MMM dd,yyyy").format(DateTime.now()).toString()}",
                      style: const TextStyle(color: whiteColors, fontSize: 16),
                    ),
                    const Text(
                      "Logged in : adfs",
                      style: TextStyle(color: whiteColors, fontSize: 16),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomeMaineContainer extends StatelessWidget {
  final IconData icons;
  final String text;
  const CustomeMaineContainer(
      {super.key, required this.icons, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: greenColors),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Icon(
              icons,
              color: whiteColors,
            ),
            const SizedBox(width: 5),
            Text(
              text,
              style: const TextStyle(color: whiteColors, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
