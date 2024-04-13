import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SingleStream extends StatefulWidget {
  static const String nameRoute = "/single-page";
  const SingleStream({super.key});

  @override
  State<SingleStream> createState() => _SingleStreamState();
}

class _SingleStreamState extends State<SingleStream> {
  final anySingleUrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/imageback.jpeg",
                ),
                fit: BoxFit.fill)),
        child: Column(
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
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Play Single Stream",
                      style: TextStyle(
                          color: whiteColors,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    kGapsThirty,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: CustomTextFormField(
                        anyName: anySingleUrl,
                        textHint: "https://www.google.com.pk",
                      ),
                    ),
                    kGapsTwenty,
                    ElevatedButton(
                        style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(side: BorderSide())),
                            backgroundColor:
                                MaterialStatePropertyAll(blackColors)),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            "PLAY",
                            style: TextStyle(color: whiteColors, fontSize: 18),
                          ),
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
