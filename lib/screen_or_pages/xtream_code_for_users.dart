import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/getx_controllers/xtreme_users_getx.dart';
import 'package:digiitoo_iptv_player/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XtreamCodeForUser extends StatefulWidget {
  const XtreamCodeForUser({super.key});

  @override
  State<XtreamCodeForUser> createState() => _XtreamCodeForUserState();
}

class _XtreamCodeForUserState extends State<XtreamCodeForUser> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    XtreamUserController xtreamUserController = Get.put(XtreamUserController());
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
                  child: Form(
                    key: _formKey,
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
                        anyName: xtreamUserController.anyName,
                        textHint: 'Any Name (Optional)',
                      ),
                      kGapsTen,
                      CustomTextFormField(
                        anyName: xtreamUserController.username,
                        textHint: 'Username',
                      ),
                      kGapsTen,
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextFormField(
                              anyName: xtreamUserController.password,
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
                        anyName: xtreamUserController.type,
                        textHint: 'Enter url here',
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
                            onPressed: () async {
                              await sendLoginValuesToController(context);
                            },
                            child: const Text(
                              "ADD USER",
                              style:
                                  TextStyle(color: whiteColors, fontSize: 18),
                            )),
                      )
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  sendLoginValuesToController(BuildContext context) {
    XtreamUserController xtreamUserController = Get.put(XtreamUserController());
    bool isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    xtreamUserController.submissionApiForLogin(context);
  }
}
