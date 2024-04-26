import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PlayerSelection extends StatefulWidget {
  const PlayerSelection({super.key});

  @override
  State<PlayerSelection> createState() => _PlayerSelectionState();
}

class _PlayerSelectionState extends State<PlayerSelection> {
  @override
  Widget build(BuildContext context) {
    final Size screensizing = MediaQuery.of(context).size;
    final liveController = TextEditingController();
    final moviesController = TextEditingController();
    final seriesController = TextEditingController();
    final catchUpController = TextEditingController();
    final recordingsController = TextEditingController();
    final liveTvWithGuideController = TextEditingController();

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
                        "$deviceOptions | Settings | Player Selection",
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
              Container(
                width: screensizing.width * 0.8,
                padding: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Text("Select your media player",
                          style: TextStyle(
                              color: whiteColors,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      kGapsTen,
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "LIVE",
                              style: TextStyle(
                                  color: whiteColors,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: CustomTextFormField(
                                anyName: liveController,
                                textHint:
                                    'Build-in Player (Hardware/Software Decorder)',
                              ),
                            ),
                          ),
                        ],
                      ),
                      kGapsTen,
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "MOVIES",
                              style: TextStyle(
                                  color: whiteColors,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: CustomTextFormField(
                                anyName: moviesController,
                                textHint:
                                    'Build-in Player (Hardware/Software Decorder)',
                              ),
                            ),
                          ),
                        ],
                      ),
                      kGapsTen,
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "SERIES",
                              style: TextStyle(
                                  color: whiteColors,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: CustomTextFormField(
                                anyName: seriesController,
                                textHint:
                                    'Build-in Player (Hardware/Software Decorder)',
                              ),
                            ),
                          ),
                        ],
                      ),
                      kGapsTen,
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "CATCH UP",
                              style: TextStyle(
                                  color: whiteColors,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: CustomTextFormField(
                                anyName: catchUpController,
                                textHint:
                                    'Build-in Player (Hardware/Software Decorder)',
                              ),
                            ),
                          ),
                        ],
                      ),
                      kGapsTen,
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "RECORDINGS",
                              style: TextStyle(
                                  color: whiteColors,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: CustomTextFormField(
                                anyName: recordingsController,
                                textHint:
                                    'Build-in Player (Hardware/Software Decorder)',
                              ),
                            ),
                          ),
                        ],
                      ),
                      kGapsTen,
                      Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "LIVE TV WITH GUIDE",
                              style: TextStyle(
                                  color: whiteColors,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: CustomTextFormField(
                                anyName: liveTvWithGuideController,
                                textHint:
                                    'Build-in Player (Hardware/Software Decorder)',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      width: 200,
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [greenColors, greenLightColors])),
                      child: const Center(
                        child: Text("RESET",
                            style: TextStyle(color: whiteColors, fontSize: 16)),
                      )),
                  Container(
                      width: 200,
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 29, 24, 24)),
                      child: const Center(
                        child: Text("BACK",
                            style: TextStyle(color: whiteColors, fontSize: 16)),
                      ))
                ]),
              ),
              kGapsTwenty
            ],
          ),
        ),
      ),
    );
  }
}
