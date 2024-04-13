import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/widgets/custom_settings_widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppSettingForApp extends StatelessWidget {
  const AppSettingForApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/imageback.jpeg",
                ),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
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
                    ]),
                    const Text(
                      "SETTINGS",
                      style: TextStyle(
                          color: whiteColors,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        DateFormat("HH:MM  MMM dd,yyyy")
                            .format(DateTime.now())
                            .toString(),
                        style: const TextStyle(
                            color: whiteColors,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GridView.builder(
                  padding: const EdgeInsets.all(0),
                  scrollDirection: Axis.vertical,
                  itemCount: 14,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, childAspectRatio: 2),
                  itemBuilder: (context, index) {
                    return CustomSettingWidget(index: index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
