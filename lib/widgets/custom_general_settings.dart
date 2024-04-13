import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomGeneralSettings extends StatelessWidget {
  final int index;
  const CustomGeneralSettings({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: CheckboxListTile(
          checkColor: whiteColors,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            listOfCheckBoxsGeneralSetting[index],
            style: const TextStyle(color: whiteColors, fontSize: 14),
          ),
          value: true,
          onChanged: (value) {},
        ),
      );
    } else if (index == 1) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: CheckboxListTile(
          checkColor: whiteColors,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            listOfCheckBoxsGeneralSetting[index],
            style: const TextStyle(color: whiteColors, fontSize: 14),
          ),
          value: true,
          onChanged: (value) {},
        ),
      );
    } else if (index == 2) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: CheckboxListTile(
          checkColor: whiteColors,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            listOfCheckBoxsGeneralSetting[index],
            style: const TextStyle(color: whiteColors, fontSize: 14),
          ),
          value: true,
          onChanged: (value) {},
        ),
      );
    } else if (index == 3) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: CheckboxListTile(
                checkColor: whiteColors,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  listOfCheckBoxsGeneralSetting[index],
                  style: const TextStyle(color: whiteColors, fontSize: 14),
                ),
                value: true,
                onChanged: (value) {},
              ),
            ),
            Expanded(
              flex: 1,
              child: DropdownButtonFormField<int>(
                hint: const Text(
                  "30",
                  style: TextStyle(color: whiteColors),
                ),
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 5, top: 8),
                    border: UnderlineInputBorder(borderSide: BorderSide.none)),
                items: const [],
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      );
    } else if (index == 4) {
      return Container(
        margin: const EdgeInsets.only(left: 12, top: 0, bottom: 0),
        child: Row(
          children: [
            Expanded(
              child: CheckboxListTile(
                checkColor: whiteColors,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(
                  listOfCheckBoxsGeneralSetting[index],
                  style: const TextStyle(color: whiteColors, fontSize: 14),
                ),
                value: true,
                onChanged: (value) {},
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 10, top: 16, right: 80),
                decoration:
                    BoxDecoration(border: Border.all(), color: blackColors),
                child: const Text("CLEAR NOW",
                    style: TextStyle(color: whiteColors, fontSize: 12)))
          ],
        ),
      );
    } else if (index == 5) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: CheckboxListTile(
          checkColor: whiteColors,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            listOfCheckBoxsGeneralSetting[index],
            style: const TextStyle(color: whiteColors, fontSize: 14),
          ),
          value: true,
          onChanged: (value) {},
        ),
      );
    } else if (index == 6) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: CheckboxListTile(
          checkColor: whiteColors,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            listOfCheckBoxsGeneralSetting[index],
            style: const TextStyle(color: whiteColors, fontSize: 14),
          ),
          value: true,
          onChanged: (value) {},
        ),
      );
    } else if (index == 7) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: CheckboxListTile(
          checkColor: whiteColors,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            listOfCheckBoxsGeneralSetting[index],
            style: const TextStyle(color: whiteColors, fontSize: 14),
          ),
          value: true,
          onChanged: (value) {},
        ),
      );
    } else if (index == 8) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
        child: CheckboxListTile(
          checkColor: whiteColors,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            listOfCheckBoxsGeneralSetting[index],
            style: const TextStyle(color: whiteColors, fontSize: 14),
          ),
          value: true,
          onChanged: (value) {},
        ),
      );
    }
    return Container();
  }
}
