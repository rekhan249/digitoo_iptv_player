import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/widgets/custom_general_settings.dart';
import 'package:digiitoo_iptv_player/widgets/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GeneralSettings extends StatelessWidget {
  const GeneralSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensizing = MediaQuery.of(context).size;
    final userAgent = TextEditingController();
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
                        "$deviceOptions | Settings | General Settings",
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
              GridView.builder(
                dragStartBehavior: DragStartBehavior.start,
                padding: const EdgeInsets.symmetric(vertical: 0),
                shrinkWrap: true,
                itemCount: listOfCheckBoxsGeneralSetting.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 12),
                itemBuilder: (context, index) {
                  return CustomGeneralSettings(index: index);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 10),
                child: CustomTextFormField(
                  anyName: userAgent,
                  textHint: 'Set User Agent',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      hint: const Text(
                        "Choose lanuage",
                        style: TextStyle(color: whiteColors),
                      ),
                      decoration: const InputDecoration(
                          fillColor: blackColors,
                          filled: true,
                          contentPadding: EdgeInsets.only(
                              left: 15, top: 5, bottom: 5, right: 10),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: whiteColors, width: 5)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: whiteColors, width: 1),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide.none)),
                      items: const [],
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 13),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        color: blackColors,
                        border: Border.all(color: whiteColors)),
                    child: const Text(
                      "Save Changes",
                      style: TextStyle(color: whiteColors),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 13),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        color: blackColors,
                        border: Border.all(color: whiteColors)),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(color: whiteColors),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
