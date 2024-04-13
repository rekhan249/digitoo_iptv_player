import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomContainerOfCineamtic extends StatelessWidget {
  final double horizont, verti, sizvalue, fontValue;
  final double textfont1, textfont2, rightpad, leftpad, toppad;
  final String text1, text2;
  final IconData icon1, icon2;
  final Color color1, color2;
  final VoidCallback onPressed, onTap;

  const CustomContainerOfCineamtic(
      {super.key,
      required this.horizont,
      required this.verti,
      required this.sizvalue,
      required this.fontValue,
      required this.textfont1,
      required this.textfont2,
      required this.rightpad,
      required this.leftpad,
      required this.toppad,
      required this.text1,
      required this.text2,
      required this.icon1,
      required this.icon2,
      required this.color1,
      required this.color2,
      required this.onPressed,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: horizont, vertical: verti),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [color1, color2])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon1,
                  color: whiteColors,
                  size: sizvalue,
                ),
                Text(
                  text1,
                  style: TextStyle(color: whiteColors, fontSize: fontValue),
                ),
                kGapsFifteen
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.only(left: leftpad, right: rightpad, top: 12),
              child: TextButton.icon(
                  onPressed: onPressed,
                  icon: Icon(
                    icon2,
                    color: whiteColors,
                    size: textfont1,
                  ),
                  label: Text(text2,
                      style:
                          TextStyle(color: whiteColors, fontSize: textfont2))),
            ),
          ),
        ],
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
      padding: const EdgeInsets.all(6),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 1, 40, 21), Colors.orangeAccent])),
      child: Row(
        children: [
          Icon(
            icons,
            color: whiteColors,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(color: whiteColors),
          ),
        ],
      ),
    );
  }
}
