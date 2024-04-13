import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomWidgetsHome extends StatelessWidget {
  final IconData iconData;
  final String customText;
  final VoidCallback onPressed;

  const CustomWidgetsHome(
      {super.key,
      required this.iconData,
      required this.customText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5),
      decoration: BoxDecoration(color: blackColors, border: Border.all()),
      child: Row(
        children: [
          Icon(iconData, size: 20, color: whiteColors),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              customText,
              style: const TextStyle(color: whiteColors, fontSize: 14),
            ),
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: whiteColors,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
