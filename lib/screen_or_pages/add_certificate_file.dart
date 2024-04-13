import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddCertificateFile extends StatefulWidget {
  static const String nameRoute = "/certificate-page";
  const AddCertificateFile({super.key});

  @override
  State<AddCertificateFile> createState() => _AddCertificateFileState();
}

class _AddCertificateFileState extends State<AddCertificateFile> {
  final _anyName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    DateTime dateTimeValue = DateTime.now();
    DateFormat formateDate = DateFormat("HH:MM  MMM dd,yyyy");
    int? value = 0;
    List<String> mobileTv = ["FILE", "M3U URL", "MAC"];
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(206, 1, 3, 58),
      body: Container(
        width: screenSize.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(206, 1, 3, 58),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Row(
                        children: [
                          Text(
                            deviceOptions,
                            style: TextStyle(color: whiteColors, fontSize: 20),
                          ),
                          Text(
                            "| Settings |",
                            style: TextStyle(color: whiteColors, fontSize: 20),
                          ),
                          Text(
                            "VPN",
                            style: TextStyle(color: whiteColors, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      formateDate.format(dateTimeValue),
                      style: const TextStyle(color: whiteColors, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  height: screenSize.height * 0.80,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Add Certificate File",
                            style: TextStyle(
                                color: whiteColors,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        kGapsTen,
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "Certificate Type",
                                style: TextStyle(
                                    color: whiteColors,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: mobileTv
                                      .map((e) => Expanded(
                                            child: RadioListTile(
                                              activeColor: whiteColors,
                                              title: Text(e,
                                                  style: const TextStyle(
                                                      color: whiteColors,
                                                      fontSize: 16)),
                                              value: e[value!],
                                              groupValue: e[value!],
                                              onChanged: (val) {
                                                value = int.parse(val!);
                                              },
                                            ),
                                          ))
                                      .toList(),
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
                                "Certificate Url",
                                style: TextStyle(
                                    color: whiteColors,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomTextFormField(
                                  anyName: _anyName,
                                  textHint: "https://www.google.com.pk",
                                ),
                              ),
                            ),
                          ],
                        ),
                        kGapsTwenty,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 14),
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(colors: [
                                      Color.fromARGB(255, 27, 29, 68),
                                      Color.fromARGB(255, 18, 12, 34)
                                    ]),
                                    border: Border.all()),
                                child: const Text(
                                  "CONNECT VPN",
                                  style: TextStyle(
                                      color: whiteColors,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 14),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Color.fromARGB(255, 27, 29, 68),
                                    Color.fromARGB(255, 18, 12, 34)
                                  ]),
                                  border: Border.all()),
                              child: const Text(
                                "LIST USERS",
                                style: TextStyle(
                                    color: whiteColors,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
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
