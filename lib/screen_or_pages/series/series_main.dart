import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/getx_controllers/drawer_and_screen.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/cinemania_sub_screens/all_cinemania_channels.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/cinemania_sub_screens/box_office_hits.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/cinemania_sub_screens/continue_watcing.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/cinemania_sub_screens/favourite_channel.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/cinemania_sub_screens/live_ppv_envent.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/cinemania_sub_screens/recently_add.dart';
import 'package:digiitoo_iptv_player/widgets/custom_drawer_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeriesCinematic extends StatefulWidget {
  const SeriesCinematic({super.key});

  @override
  State<SeriesCinematic> createState() => _SeriesCinematicState();
}

class _SeriesCinematicState extends State<SeriesCinematic> {
  static const List<Widget> widgetsList = <Widget>[
    AllCineManiaChannels(),
    FavrouteChannels(),
    ContinueWatching(),
    RecentlyAdd(),
    BoxOffHits(),
    LivePPVevent(),
  ];
  static const List<String> _widgetTitleList = [
    "All",
    "Favourite",
    "Continue Watching",
    "Recently Added",
    "Box Office Hits",
    "Channels History",
    "24/7 Cinemania",
    "Live|PPV events"
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    TitleAndBodychangeDrawer titleAndBodychangeDrawer =
        Get.put(TitleAndBodychangeDrawer());
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          leading: Row(
            children: [
              IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu, color: whiteColors)),
              // Expanded(
              //   child: IconButton(
              //       onPressed: () {
              //         // Navigator.pop(context);
              //       },
              //       icon: const Icon(Icons.arrow_back, color: whiteColors)),
              // ),
            ],
          ),
          centerTitle: true,
          title: Obx(
            () => Text(
              _widgetTitleList[titleAndBodychangeDrawer.selectIndex.value],
              style: const TextStyle(
                  color: whiteColors, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 9, 36, 84),
          actions: [
            SizedBox(
              width: 200,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: const InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        suffixIcon: Icon(
                          Icons.search,
                          color: whiteColors,
                        )),
                  )),
                  const Icon(Icons.more_vert_rounded, color: whiteColors)
                ],
              ),
            )
          ]),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade700,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: whiteColors,
                    ),
                    border: const UnderlineInputBorder(
                        borderSide: BorderSide.none)),
              ),
              kGapsTwenty,
              ListView.builder(
                itemCount: cinematicString.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            titleAndBodychangeDrawer.updateIndex(0);
                            Navigator.pop(context);
                          } else if (index == 1) {
                            titleAndBodychangeDrawer.updateIndex(1);
                            Navigator.pop(context);
                          } else if (index == 2) {
                            titleAndBodychangeDrawer.updateIndex(2);
                            Navigator.pop(context);
                          } else if (index == 3) {
                            titleAndBodychangeDrawer.updateIndex(3);
                            Navigator.pop(context);
                          } else if (index == 4) {
                            titleAndBodychangeDrawer.updateIndex(4);
                            Navigator.pop(context);
                          } else if (index == 5) {
                            titleAndBodychangeDrawer.updateIndex(5);
                            Navigator.pop(context);
                          } else if (index == 6) {
                            titleAndBodychangeDrawer.updateIndex(6);
                            Navigator.pop(context);
                          }
                        },
                        child: CustomDrawerListTile(
                            number: 12345, title: cinematicString[index]),
                      ),
                      const Divider(
                        color: whiteColors,
                        height: 0.1,
                        thickness: 0.5,
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: screenSize.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/imageback.jpeg",
                ),
                fit: BoxFit.fill)),
        child: Obx(
          () => Center(
            child: widgetsList[titleAndBodychangeDrawer.selectIndex.value],
          ),
        ),
      ),
    );
  }
}
