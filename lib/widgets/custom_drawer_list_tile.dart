import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomDrawerListTile extends StatelessWidget {
  final int number;
  final String title;
  const CustomDrawerListTile(
      {super.key, required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: blackColors.withOpacity(0.4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 200,
              child: Text(title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: whiteColors,
                      fontWeight: FontWeight.bold,
                      fontSize: 12)),
            ),
            Text(number.toString(),
                style: const TextStyle(
                    color: whiteColors, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
