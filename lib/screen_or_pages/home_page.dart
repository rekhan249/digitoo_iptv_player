import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/add_user.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/playlist_load.screen.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/single_stream.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/xtream_code_for_users.dart';
import 'package:digiitoo_iptv_player/widgets/home_custome_contrainer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String nameRoute = "/home-page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const PlayListLoading()));
                                },
                                child: CustomWidgetsHome(
                                    iconData: Icons.menu,
                                    customText:
                                        "LOAD YOUR PLAYLIST OR FILE/URL",
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const PlayListLoading()));
                                    }),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  showDialogForLoading();
                                },
                                child: CustomWidgetsHome(
                                    iconData: Icons.menu,
                                    customText: "LOAD YOUR DATA FROM DEVICE",
                                    onPressed: () {
                                      showDialogForLoading();
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (_) => const LoadingData()));
                                    }),
                              ),
                            ),
                          ],
                        ),
                        kGapsTwenty,
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const XtreamCodeForUser()));
                                },
                                child: CustomWidgetsHome(
                                    iconData: Icons.menu,
                                    customText: "LOAD WITH XTREAM CODES API",
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const XtreamCodeForUser()));
                                    }),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const SingleStream()));
                                },
                                child: CustomWidgetsHome(
                                    iconData: Icons.menu,
                                    customText: "PLAY SINGLE STREAM",
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const SingleStream()));
                                    }),
                              ),
                            ),
                          ],
                        ),
                        kGapsTwenty,
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const AddUser()));
                          },
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: CustomWidgetsHome(
                                iconData: Icons.menu,
                                customText: "LIST USERS",
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const AddUser()));
                                }),
                          ),
                        ),
                      ],
                    ),
                  )),
              kGapsTen,
              const Text(
                splashLink,
                style: TextStyle(color: whiteColors, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showDialogForLoading() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Container(
                height: 160,
                decoration: const BoxDecoration(border: Border()),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.slow_motion_video_sharp,
                            size: 50,
                            color: blackColors,
                          ),
                          Expanded(
                            child: Text("Choose Data",
                                style: TextStyle(
                                    color: blackColors,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
                    kGapsFive,
                    const Row(
                      children: [
                        Icon(
                          Icons.folder,
                          size: 30,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 2),
                        Expanded(
                          child: Text("Internal Storage",
                              style:
                                  TextStyle(color: blackColors, fontSize: 18)),
                        ),
                      ],
                    ),
                    kGapsTen,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(width: 300),
                        ElevatedButton(
                            style: const ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    ContinuousRectangleBorder(
                                        side: BorderSide())),
                                backgroundColor:
                                    MaterialStatePropertyAll(blackColors)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel",
                                style: TextStyle(
                                    color: whiteColors, fontSize: 18)))
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
