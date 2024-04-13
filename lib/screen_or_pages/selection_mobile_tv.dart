import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/models/mobtv_select_model.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileTVSelectionSecreen extends StatefulWidget {
  static const String nameRoute = "/mobile-tv";
  const MobileTVSelectionSecreen({super.key});

  @override
  State<MobileTVSelectionSecreen> createState() =>
      _MobileTVSelectionSecreenState();
}

class _MobileTVSelectionSecreenState extends State<MobileTVSelectionSecreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/imageback.jpeg",
                ),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
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
                      deviceOptions,
                      style: TextStyle(
                          color: whiteColors,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenSize.width * 0.8,
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      kGapsTen,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                            deviceOptions,
                            style: TextStyle(
                                color: whiteColors,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Text(
                        devicetype,
                        style: TextStyle(color: whiteColors, fontSize: 14),
                      ),
                      kGapsFive,
                      const Text(
                        selectOption,
                        style: TextStyle(color: whiteColors, fontSize: 14),
                      ),
                      GetBuilder(
                          init: MobTvController(),
                          builder: (controller) {
                            return ListView(
                                padding: const EdgeInsets.all(0),
                                shrinkWrap: true,
                                children: mobTvSelectionModelList
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
                                              controller.mobTvSelectionModel,
                                          onChanged: (val) {
                                            controller.seletionTvOrMobile(val!);
                                          },
                                        ))
                                    .toList());
                          }),
                      SizedBox(
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(blackColors),
                                shape: MaterialStatePropertyAll(
                                    ContinuousRectangleBorder(
                                        side: BorderSide(),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const HomePage()));
                            },
                            child: const Text("SAVE",
                                style: TextStyle(
                                    color: whiteColors, fontSize: 16))),
                      ),
                      kGapsFive
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
