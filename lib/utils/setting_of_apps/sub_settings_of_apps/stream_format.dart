import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/models/mobtv_select_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:intl/intl.dart';

class StreamFormat extends StatelessWidget {
  const StreamFormat({super.key});

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
                padding: const EdgeInsets.only(left: 5, right: 10, top: 25),
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
                        "$deviceOptions | Settings | Stream Format",
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
              const SizedBox(height: 10),
              Container(
                width: screensizing.width * 0.8,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    const Text("Stream Format",
                        style: TextStyle(
                            color: whiteColors,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    GetBuilder(
                        init: StreamFormatController(),
                        builder: (controller) {
                          return ListView(
                              padding: const EdgeInsets.all(0),
                              shrinkWrap: true,
                              children: streamFormatModelList
                                  .map((e) => RadioListTile(
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        activeColor: whiteColors,
                                        title: Text(e.title,
                                            style: const TextStyle(
                                                color: whiteColors,
                                                fontSize: 16)),
                                        value: e,
                                        groupValue:
                                            controller.streamFormatModel,
                                        onChanged: (val) {
                                          controller.seletionstreamFormat(val!);
                                        },
                                      ))
                                  .toList());
                        }),
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
