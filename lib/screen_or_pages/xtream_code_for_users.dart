import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/cinematic_home/cinematic_home.dart';
import 'package:digiitoo_iptv_player/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class XtreamCodeForUser extends StatefulWidget {
  const XtreamCodeForUser({super.key});

  @override
  State<XtreamCodeForUser> createState() => _XtreamCodeForUserState();
}

class _XtreamCodeForUserState extends State<XtreamCodeForUser> {
  @override
  Widget build(BuildContext context) {
    final anyName = TextEditingController();
    final anyUserName = TextEditingController();
    final anyPassword = TextEditingController();
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
        child: Container(
          margin: const EdgeInsets.only(right: 70),
          child: SingleChildScrollView(
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kGapsFourty,
                    Icon(
                      Icons.tv,
                      size: 180,
                      shadows: const [
                        Shadow(
                            color: Color.fromARGB(255, 0, 21, 9),
                            blurRadius: 1,
                            offset: Offset(4, 4))
                      ],
                      color: whiteColors.withOpacity(0.6),
                    ),
                    kGapsTen,
                    Container(
                      width: 150,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: blackColors, border: Border.all()),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.person_add_alt,
                            color: whiteColors,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "LIST USERS",
                            style: TextStyle(color: whiteColors),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
                Expanded(
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      child: Text(
                        "Enter your login details",
                        style: TextStyle(
                            color: whiteColors,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    CustomTextFormField(
                      anyName: anyName,
                      textHint: 'Any Name',
                    ),
                    kGapsTen,
                    CustomTextFormField(
                      anyName: anyUserName,
                      textHint: 'Username',
                    ),
                    kGapsTen,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            anyName: anyPassword,
                            textHint: 'Password',
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.all(9),
                          decoration: const BoxDecoration(
                              border: Border.fromBorderSide(
                                  BorderSide(color: whiteColors)),
                              shape: BoxShape.rectangle,
                              color: Color.fromARGB(255, 0, 21, 9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: whiteColors,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                    kGapsTen,
                    CustomTextFormField(
                      anyName: anyUrl,
                      textHint: 'https://www.google.com',
                    ),
                    kGapsFive,
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(side: BorderSide())),
                              backgroundColor:
                                  MaterialStatePropertyAll(blackColors)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CinematicHome()));
                          },
                          child: const Text(
                            "ADD USER",
                            style: TextStyle(color: whiteColors, fontSize: 18),
                          )),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
