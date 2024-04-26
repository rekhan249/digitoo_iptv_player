import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExternalPlayers extends StatelessWidget {
  const ExternalPlayers({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensizing = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: screensizing.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/imageback.jpeg",
                ),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 10, top: 30),
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
                        "$deviceOptions | Settings | External Player",
                        style: TextStyle(
                            color: whiteColors,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                    Text(
                      DateFormat("HH:MM  MMM dd,yyyy")
                          .format(DateTime.now())
                          .toString(),
                      style: const TextStyle(
                          color: whiteColors,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                            color: whiteColors,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Icon(Icons.add)),
                    kGapsTen,
                    const Text(
                      "ADD PLAYER",
                      style: TextStyle(
                          color: whiteColors,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
