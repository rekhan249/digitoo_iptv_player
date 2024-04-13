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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: const TextStyle(
                    color: whiteColors, fontWeight: FontWeight.bold)),
            Text(number.toString(),
                style: const TextStyle(
                    color: whiteColors, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
