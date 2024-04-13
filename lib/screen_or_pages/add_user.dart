import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/xtream_code_for_users.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  @override
  Widget build(BuildContext context) {
    List<String> dataList = [
      "Rehmat ",
      "REKhan",
      "RE to RE",
      "REK",
    ];
    final Size screenSizing = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSizing.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black,
          Color.fromARGB(255, 1, 32, 29),
          Colors.black,
        ])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                    "LIST USERS",
                    style: TextStyle(
                        color: whiteColors,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            color: whiteColors,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: IconButton(
                          color: blackColors,
                          onPressed: () {
                            _addNewUser();
                          },
                          icon: const Icon(Icons.add, size: 16),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          "ADD USER",
                          style: TextStyle(
                              color: whiteColors,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  dataList.isEmpty
                      ? Container(
                          margin: const EdgeInsets.symmetric(vertical: 40),
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    color: whiteColors,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35))),
                                child: IconButton(
                                  color: blackColors,
                                  onPressed: () {
                                    _addNewUser();
                                  },
                                  icon: const Icon(Icons.add, size: 40),
                                ),
                              ),
                              const Text(
                                "ADD USER",
                                style: TextStyle(
                                    color: whiteColors,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      : SizedBox(
                          height: screenSizing.height * 0.75,
                          child: GridView.builder(
                            padding: const EdgeInsets.all(0),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 4, crossAxisCount: 2),
                            shrinkWrap: true,
                            itemCount: dataList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: whiteColors,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: ListTile(
                                    leading: Container(
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade400,
                                            blurRadius: 5,
                                            offset: const Offset(0, 0))
                                      ]),
                                      child: const Icon(
                                        size: 60,
                                        Icons.person,
                                        color: blackColors,
                                      ),
                                    ),
                                    title: Text(
                                      dataList[index],
                                      style: const TextStyle(
                                          color: blackColors,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      dataList[index],
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: blackColors,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addNewUser() {
    Get.to(() => const XtreamCodeForUser());
  }
}
