import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EGPSettings extends StatelessWidget {
  const EGPSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensizing = MediaQuery.of(context).size;
    List<String> buttonText = [
      " EGP SOURCES ",
      "EGP TIMELINES",
      "EGP TIMESHIFT"
    ];
    List<String> subtext = [" asdfs ", "all channels", "nothing"];
    List<Color> buttonColors = [
      const Color.fromARGB(255, 66, 148, 215),
      blackColors,
      blackColors
    ];
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
                        "$deviceOptions | Settings | EGP",
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 158, 158, 158)),
                          child: ListView.builder(
                              padding: const EdgeInsets.all(0),
                              itemCount: 3,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Column(
                                    children: [
                                      ElevatedButton(
                                        style: ButtonStyle(
                                            shape:
                                                const MaterialStatePropertyAll(
                                                    ContinuousRectangleBorder()),
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    buttonColors[index])),
                                        onPressed: () {},
                                        child: Text(
                                          buttonText[index],
                                          style: const TextStyle(
                                              color: whiteColors,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Text(
                                        subtext[index],
                                        style: const TextStyle(
                                            color: whiteColors,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        )),
                    Expanded(
                        flex: 5,
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(204, 65, 64, 64)),
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 12, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "EGP SOURCES",
                                      style: TextStyle(
                                          color: whiteColors,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        TextButton.icon(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.repeat,
                                            size: 12,
                                            color: whiteColors,
                                          ),
                                          label: const Text(
                                            "EGP SOURCES",
                                            style: TextStyle(
                                                color: whiteColors,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        TextButton.icon(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            size: 12,
                                            color: whiteColors,
                                          ),
                                          label: const Text(
                                            "ADD SOURCES",
                                            style: TextStyle(
                                                color: whiteColors,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration:
                                    BoxDecoration(color: Colors.grey.shade900),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: CheckboxListTile(
                                          activeColor: blackColors,
                                          contentPadding:
                                              const EdgeInsets.all(0),
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          title: const Text(
                                              "asdfs_In built EPG Souce Defalut",
                                              style: TextStyle(
                                                  color: whiteColors,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold)),
                                          value: true,
                                          onChanged: (val) {}),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("DownLoad",
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text("Last Update 1 day ago",
                                                  style: TextStyle(
                                                      color: whiteColors,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                          SizedBox(width: 15),
                                          Icon(Icons.arrow_forward_ios,
                                              color: whiteColors, size: 16)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 100, height: 150)
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
