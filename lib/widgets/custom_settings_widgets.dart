import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/utils/setting_of_apps/sub_settings_of_apps/automation.dart';
import 'package:digiitoo_iptv_player/utils/setting_of_apps/sub_settings_of_apps/egp_setting.dart';
import 'package:digiitoo_iptv_player/utils/setting_of_apps/sub_settings_of_apps/general_setting.dart';
import 'package:digiitoo_iptv_player/utils/setting_of_apps/sub_settings_of_apps/stream_format.dart';

import 'package:flutter/material.dart';

class CustomSettingWidget extends StatelessWidget {
  final int index;
  const CustomSettingWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index == 0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GeneralSettings(),
              ));
        } else if (index == 1) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EGPSettings(),
              ));
        } else if (index == 2) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StreamFormat(),
              ));
        } else if (index == 3) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Automation(),
              ));
        } else if (index == 4) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GeneralSettings(),
              ));
        } else if (index == 5) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GeneralSettings(),
              ));
        } else if (index == 6) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GeneralSettings(),
              ));
        } else if (index == 7) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GeneralSettings(),
              ));
        } else if (index == 8) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GeneralSettings(),
              ));
        } else if (index == 9) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GeneralSettings(),
              ));
        } else if (index == 10) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GeneralSettings(),
              ));
        } else if (index == 11) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GeneralSettings(),
              ));
        } else if (index == 12) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GeneralSettings(),
              ));
        } else if (index == 13) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GeneralSettings(),
              ));
        }
      },
      child: Container(
        margin: const EdgeInsets.all(6),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              listIconData[index],
              color: whiteColors,
            ),
            kGapsFive,
            Text(
              listOfNames[index],
              style: const TextStyle(color: whiteColors),
            )
          ],
        ),
      ),
    );
  }
}
