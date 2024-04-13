import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EGPWithLivePage extends StatelessWidget {
  const EGPWithLivePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSizing = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSizing.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/imageback.jpeg",
                ),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 25, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    deviceOptions,
                    style: TextStyle(
                        color: whiteColors,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "LIST USERS",
                    style: TextStyle(
                        color: whiteColors,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      DateFormat("HH:MM MMM dd,yyyy")
                          .format(DateTime.now())
                          .toString(),
                      style: const TextStyle(
                          color: whiteColors,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        height: 150,
                        decoration: const BoxDecoration(color: Colors.amber),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 150,
                        decoration: const BoxDecoration(color: Colors.amber),
                      )),
                ],
              ),
            ),
            kGapsTen,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        decoration: const BoxDecoration(color: Colors.amber),
                      )),
                  const SizedBox(width: 10),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 100,
                        decoration: const BoxDecoration(color: Colors.amber),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
