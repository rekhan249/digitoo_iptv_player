import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/models/mobtv_select_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PlayerSettings extends StatefulWidget {
  const PlayerSettings({super.key});

  @override
  State<PlayerSettings> createState() => _PlayerSettingsState();
}

class _PlayerSettingsState extends State<PlayerSettings> {
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
                        "$deviceOptions | Settings | Player Settings",
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
              const SizedBox(height: 5),
              Container(
                width: screensizing.width * 0.8,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    const Text("Built-in Player Settings",
                        style: TextStyle(
                            color: whiteColors,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    GetBuilder(
                        init: PlayerSettingsController(),
                        builder: (controller) {
                          return ListView(
                              padding: const EdgeInsets.all(0),
                              shrinkWrap: true,
                              children: playerSettingsModelList
                                  .map((e) => RadioListTile(
                                        dense: true,
                                        visualDensity: VisualDensity
                                            .adaptivePlatformDensity,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        activeColor: whiteColors,
                                        title: Text(e.title,
                                            style: const TextStyle(
                                                color: whiteColors,
                                                fontSize: 16)),
                                        value: e,
                                        groupValue:
                                            controller.playerSettingsModel,
                                        onChanged: (val) {
                                          controller
                                              .seletionPlayerSettings(val!);
                                        },
                                      ))
                                  .toList());
                        }),
                    DropdownButtonFormField(
                      dropdownColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: "Max Limits",
                          hintStyle: TextStyle(color: whiteColors),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide.none)),
                      isExpanded: true,
                      items: [
                        DropdownMenuItem(
                          enabled: true,
                          child: GetBuilder(
                              init: PlayerSettingsForRadioController(),
                              builder: (controllerValue) {
                                return ListView(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    children: playerSettingsForRadioList
                                        .map((e) => RadioListTile(
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading,
                                              activeColor: whiteColors,
                                              title: Text(e.title,
                                                  style: const TextStyle(
                                                      color: whiteColors,
                                                      fontSize: 16)),
                                              value: e,
                                              groupValue: controllerValue
                                                  .playerSettingsForRadio,
                                              onChanged: (val) {
                                                controllerValue
                                                    .seletionPlayerSettingsForRadio(
                                                        val!);
                                              },
                                            ))
                                        .toList());
                              }),
                        )
                      ],
                      onChanged: (value) {},
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      child: CheckboxListTile(
                        dense: true,
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                        checkColor: whiteColors,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text(
                          "Enable OpenSl ES(Hardware acclerated audio)",
                          style: TextStyle(color: whiteColors, fontSize: 14),
                        ),
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      child: CheckboxListTile(
                        dense: true,
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                        checkColor: whiteColors,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text(
                          "Enable OpenGL ES(OpenGL pixel format)",
                          style: TextStyle(color: whiteColors, fontSize: 14),
                        ),
                        value: true,
                        onChanged: (value) {},
                      ),
                    )
                  ],
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
                        child: Text("SAVE CHANGES",
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
            ],
          ),
        ),
      ),
    );
  }
}
