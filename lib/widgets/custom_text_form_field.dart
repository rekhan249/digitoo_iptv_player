import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String textHint;
  const CustomTextFormField({
    super.key,
    required TextEditingController anyName,
    required this.textHint,
  }) : _anyName = anyName;

  final TextEditingController _anyName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.newline,
      style: const TextStyle(color: whiteColors),
      cursorColor: whiteColors,
      controller: _anyName,
      decoration: InputDecoration(
          fillColor: blackColors,
          filled: true,
          hintText: textHint,
          hintStyle: const TextStyle(color: whiteColors),
          contentPadding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: whiteColors, width: 5)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: whiteColors, width: 1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5))),
          border: const UnderlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}
