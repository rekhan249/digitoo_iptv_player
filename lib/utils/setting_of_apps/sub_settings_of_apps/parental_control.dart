import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ParentalControll extends StatefulWidget {
  const ParentalControll({super.key});

  @override
  State<ParentalControll> createState() => _ParentalControllState();
}

class _ParentalControllState extends State<ParentalControll> {
  @override
  Widget build(BuildContext context) {
    final Size screensizing = MediaQuery.of(context).size;
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return Scaffold(
      body: Container(
        height: screensizing.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/imageback.jpeg",
                ),
                fit: BoxFit.fill)),
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
                      "$deviceOptions | Settings | Parental Controll",
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
            const SizedBox(height: 15),
            Container(
              width: screensizing.width * 0.8,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    const Text("set Parental password",
                        style: TextStyle(
                            color: whiteColors,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      anyName: passwordController,
                      textHint: 'Enter your password',
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      anyName: confirmPasswordController,
                      textHint: 'Enter confirm password',
                    ),
                    const SizedBox(height: 5),
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
    );
  }
}
