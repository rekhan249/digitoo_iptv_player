import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/models/play_list_type_model.dart';
import 'package:digiitoo_iptv_player/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayListLoading extends StatefulWidget {
  static const String nameRoute = "/playlist-page";
  const PlayListLoading({super.key});

  @override
  State<PlayListLoading> createState() => _PlayListLoadingState();
}

class _PlayListLoadingState extends State<PlayListLoading> {
  @override
  Widget build(BuildContext context) {
    final anyName = TextEditingController();
    final anyUrl = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
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
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Column(
                      children: [
                        kGapsTen,
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "'LIST NAME",
                                style:
                                    TextStyle(color: whiteColors, fontSize: 16),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: CustomTextFormField(
                                  anyName: anyName,
                                  textHint: 'Any Name',
                                ),
                              ),
                            ),
                          ],
                        ),
                        kGapsFive,
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "'LIST TYPE",
                                style:
                                    TextStyle(color: whiteColors, fontSize: 16),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: GetBuilder(
                                  init: FileM3UMacController(),
                                  builder: (controller) {
                                    return Row(
                                      children: playListTypeModelList
                                          .map((e) => Expanded(
                                                child: RadioListTile(
                                                  activeColor: whiteColors,
                                                  title: Text(e.title,
                                                      style: const TextStyle(
                                                          color: whiteColors,
                                                          fontSize: 15)),
                                                  value: e,
                                                  groupValue: controller
                                                      .playListTypeModel,
                                                  onChanged: (val) {
                                                    controller
                                                        .selectFileOrM3UorMac(
                                                            val!, context);
                                                  },
                                                ),
                                              ))
                                          .toList(),
                                    );
                                  }),
                            ),
                          ],
                        ),
                        kGapsFive,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text(
                                "'URL",
                                style:
                                    TextStyle(color: whiteColors, fontSize: 16),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: CustomTextFormField(
                                  anyName: anyUrl,
                                  textHint: 'Any Name',
                                ),
                              ),
                            ),
                          ],
                        ),
                        kGapsTwenty,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                  color: blackColors, border: Border.all()),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.person_add_alt,
                                    color: whiteColors,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "ADD USER",
                                    style: TextStyle(color: whiteColors),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                  color: blackColors, border: Border.all()),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.person_add_alt,
                                    color: whiteColors,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "LIST USERS",
                                    style: TextStyle(color: whiteColors),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
