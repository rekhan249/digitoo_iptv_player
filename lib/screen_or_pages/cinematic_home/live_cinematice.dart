import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/getx_controllers/drawer_and_screen.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/all_live_all.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/ca_subs/canada_ca.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/ca_subs/documentry_ca.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/ca_subs/entertainment_ca.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/ca_subs/french_ca.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/ca_subs/general_ca.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/ca_subs/kids_ca.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/ca_subs/movies_ca.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/ca_subs/music_ca.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/ca_subs/news_ca.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/ca_subs/sports_ca.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/channel_history.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/dstv-sub.dart/entertainment_dsrtv.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/dstv-sub.dart/kids_dstv.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/dstv-sub.dart/movies_dstv.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/dstv-sub.dart/news_dstv.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/dstv-sub.dart/sports_dstv.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/favourite_live.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/ie_trish_tv.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/in_or_pk_subs/documentries_in.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/in_or_pk_subs/entertainemnt_in.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/in_or_pk_subs/entertainment_pk.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/in_or_pk_subs/inpk_sports.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/in_or_pk_subs/movies_in.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/in_or_pk_subs/music_in.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/in_or_pk_subs/new_in.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/in_or_pk_subs/news_pk.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/in_or_pk_subs/religious_in.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/inr_subs/assamese.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/inr_subs/bangla.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/inr_subs/gujrati.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/inr_subs/kannada.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/inr_subs/malayalam.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/inr_subs/marathi.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/inr_subs/odia.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/inr_subs/punjabi_inr.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/inr_subs/tamil.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/inr_subs/telugu.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/betting.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/cricket_ipl.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/efl_hub.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/epl_hub.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/fone_motogp.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/football_events.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/ipl_in.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/mls.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/national_league.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/rugby_events.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/snooker_dart_pdc.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/spfl_loi_irish.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/sports_events.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/star_hub_epl.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/triller_tv_ufc.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/world_sports.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv/wsl.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/live_ppv_event.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/nepal_int.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/astro_sports.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/bein_max.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/bein_media.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/clubber.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/csports_rush.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/daznuk_us_ca.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/espn.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/hub_sports.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/now_hk.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/optus_nz_sky.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/peacock.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/setanta.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/stan_mola_tv.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/superleague_florugby.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports/vidio.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/sports_ar.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/srilanka_int.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/twenty_cinematic.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/uk_sub/documents_uk.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/uk_sub/entertainment.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/uk_sub/kids_uk.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/uk_sub/movies_uk.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/uk_sub/music_uk.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/uk_sub/news_uk.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/uk_sub/regional_red_button.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/uk_sub/religious_uk.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/uk_sub/sports_uk.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/uk_sub/tnt_sports.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/abc.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/asian.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/cbs_us.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/documentries_us.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/entertianment_us.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/fox.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/general.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/international.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/kids_us.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/locals_us.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/mlb_us.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/moives.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/music_us.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/nba_us.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/nbc.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/new_us.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/nfl_us.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/spectrum.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/us_subs/sports_us.dart';
import 'package:digiitoo_iptv_player/widgets/custom_drawer_list_tile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveCinemania extends StatefulWidget {
  const LiveCinemania({super.key});

  @override
  State<LiveCinemania> createState() => _LiveCinemaniaState();
}

class _LiveCinemaniaState extends State<LiveCinemania> {
  static const List<Widget> widgetsList = <Widget>[
    LiveAllCinematic(),
    LiveFavourite(),
    HistoryChannelLive(),
    LiveTewntyCinematice(),
    LivePPVevents(),
    Betting(),
    IPLIn4k(),
    CricketIPL(),
    SportsEvents(),
    RugbyEvents(),
    FootballEvents(),
    EplHub(),
    StarHubEpl(),
    EflHub(),
    SpflLoiIrish(),
    NationalLeague(),
    Mls(),
    Wsl(),
    TrillerTvUfc(),
    FoneMotoGp(),
    SnookerDartsPdc(),
    WorldSports(),
    ClubberTv(),
    SuperLeagueFlorugby(),
    NowHk(),
    OptusNzskySports(),
    PeaCock(),
    Setanta(),
    Vidio(),
    HubSports(),
    CsportsRush(),
    DaznUkUsCa(),
    AstroSports(),
    Espn(),
    StanMolaTv(),
    BeinMedia(),
    BeinMax(),
    SportsUk(),
    TntSports(),
    Entertainment(),
    RegionalRedbutton(),
    MoviesUk(),
    KidsUk(),
    DocumentsUk(),
    NewsUk(),
    MusicUk(),
    ReligiousUk(),
    IeIrishTv(),
    InPkSports(),
    EntertainmentPk(),
    NewsPk(),
    EntertinmentIn(),
    MoviesIn(),
    MusicIn(),
    NewsIn(),
    DocumentriesIn(),
    ReligiousIn(),
    PunjabiInr(),
    Bangla(),
    Malayalam(),
    Marathi(),
    Gujrati(),
    Telugu(),
    Tamil(),
    Assamese(),
    Kannada(),
    Odia(),
    EntertainmentUs(),
    Spectrum(),
    SportsUs(),
    LocalUs(),
    International(),
    GeneralUs(),
    Nbc(),
    Asianus(),
    NewsUs(),
    MoviesUs(),
    AbcUs(),
    FoxUs(),
    DocumentariesUs(),
    KidsUs(),
    MusicUs(),
    CbsUs(),
    MlbUs(),
    NbaUs(),
    NflUs(),
    Espn(),
    EntertainementCa(),
    SportsCa(),
    FrenchCa(),
    DocumentryCa(),
    NewsCa(),
    GeneralCa(),
    MoviesCa(),
    KidsCa(),
    MusicCa(),
    CanadaCa(),
    SportsAr(),
    NepalInt(),
    SrilankaInt(),
    EntertainmnetDstv(),
    SportsDstv(),
    MoviesDstv(),
    NewsDstv(),
    KidsDstv(),
  ];
  static const List<String> _widgetTitleList = [
    "All",
    "Favourite",
    "Channels History",
    "24/7 Cinemania",
    "Live|PPV events",
    "LIVE | Betting",
    "LIVE | IPL in 4K",
    "LIVE | Cricket / IPL",
    "LIVE | Sports Events",
    "LIVE | Rugby Events",
    "LIVE | Football Events",
    "LIVE | EPL Hub",
    "LIVE | Star Hub (EPL)",
    "LIVE | EFL Hub",
    "LIVE | SPFL / LOI / Irish",
    "LIVE | National League",
    "LIVE | MLS",
    "LIVE | WSL",
    "LIVE | Triller TV / UFC",
    "LIVE | F1 / MotoGP",
    "LIVE | Snooker / Darts / PDC",
    "LIVE | World Sports",
    "SPORTS | Clubber TV",
    "SPORTS | SuperLeague+ / Florugby",
    "SPORTS | Now HK",
    "SPORTS | Optus / NZ Sky Sports",
    "SPORTS | Peacock",
    "SPORTS | Setanta",
    "SPORTS | Vidio",
    "SPORTS | Hub Sports",
    "SPORTS | Csports / Rush",
    "SPORTS | DAZN UK/US/CA",
    "SPORTS | Astro Sports",
    "SPORTS | ESPN+",
    "SPORTS | Stan / Mola TV",
    "SPORTS | beIN Media",
    "SPORTS | beIN MAX",
    "UK | Sports",
    "UK | TNT Sports",
    "UK | Entertainment",
    "UK | Regional & Red Button",
    "UK | Movies",
    "UK | Kids",
    "UK | Documentaries",
    "UK | News",
    "UK | Music",
    "UK | Religious",
    "IE | Irish TV",
    "IN/PK | Sports",
    "PK | Entertainment",
    "PK | News",
    "IN | Entertainment",
    "IN | Movies",
    "IN | Music",
    "IN | News",
    "IN | Documentaries",
    "IN | Religious",
    "INR | Punjabi",
    "INR | Bangla",
    "INR | Malayalam",
    "INR | Marathi",
    "INR  | Gujrati",
    "INR | Telugu",
    "INR | Tamil",
    "INR | Assamese",
    "INR | Kannada",
    "INR | Odia",
    "US | Entertainment",
    "US | Spectrum",
    "US | Sports",
    "US | Locals",
    "US | International",
    "US | General",
    "US | NBC",
    "US | Asian",
    "US | News",
    "US | Movies",
    "US | ABC",
    "US | Fox",
    "US | Documentaries",
    "US | Kids",
    "US | Music",
    "US | CBS",
    "US |  MLB",
    "US | NBA",
    "US | NFL",
    "US | ESPN",
    "CA | Entertainment",
    "CA | Sports",
    "CA | French",
    "CA | Documentary",
    "CA | News",
    "CA | General",
    "CA | Movies",
    "CA | Kids",
    "CA | Music",
    "CA | Canada",
    "AR | Sports",
    "INT | Nepal",
    "INT | Sri Lanka",
    "DSTV | Entertainmnet",
    "DSTV | Sports",
    "DSTV | Movies",
    "DSTV | News",
    "DSTV | Kids",
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
              //         Navigator.pop(context);
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
              width: 260,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: TextFormField(
                    cursorColor: whiteColors,
                    decoration: InputDecoration(
                        fillColor: blackColors.withOpacity(0.2),
                        filled: true,
                        border: const UnderlineInputBorder(
                            borderSide: BorderSide.none),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: whiteColors,
                        )),
                  )),
                  const Icon(Icons.more_vert_rounded, color: whiteColors)
                ],
              ),
            )
          ]),
      drawer: Container(
        width: 260,
        margin: const EdgeInsets.only(top: 35),
        child: Drawer(
          backgroundColor: blackColors.withOpacity(0.1),
          child: Column(
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
              SingleChildScrollView(
                child: Container(
                  height: 270,
                  decoration: const BoxDecoration(),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    dragStartBehavior: DragStartBehavior.start,
                    scrollDirection: Axis.vertical,
                    itemCount: liveScreensString.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              for (int i = 0;
                                  i < liveScreensString.length;
                                  i++) {
                                if (index == i) {
                                  titleAndBodychangeDrawer.updateIndex(i);
                                  Navigator.pop(context);
                                }
                              }
                            },
                            child: CustomDrawerListTile(
                                number: 0, title: liveScreensString[index]),
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
                ),
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


/*

 else if (index == 1) {
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
                          } else if (index == 7) {
                            titleAndBodychangeDrawer.updateIndex(7);
                            Navigator.pop(context);
                          } else if (index == 8) {
                            titleAndBodychangeDrawer.updateIndex(8);
                            Navigator.pop(context);
                          } else if (index == 9) {
                            titleAndBodychangeDrawer.updateIndex(9);
                            Navigator.pop(context);
                          } else if (index == 10) {
                            titleAndBodychangeDrawer.updateIndex(10);
                            Navigator.pop(context);
                          } else if (index == 11) {
                            titleAndBodychangeDrawer.updateIndex(11);
                            Navigator.pop(context);
                          } else if (index == 12) {
                            titleAndBodychangeDrawer.updateIndex(12);
                            Navigator.pop(context);
                          } else if (index == 13) {
                            titleAndBodychangeDrawer.updateIndex(13);
                            Navigator.pop(context);
                          } else if (index == 14) {
                            titleAndBodychangeDrawer.updateIndex(14);
                            Navigator.pop(context);
                          } else if (index == 15) {
                            titleAndBodychangeDrawer.updateIndex(15);
                            Navigator.pop(context);
                          } else if (index == 16) {
                            titleAndBodychangeDrawer.updateIndex(16);
                            Navigator.pop(context);
                          } else if (index == 17) {
                            titleAndBodychangeDrawer.updateIndex(17);
                            Navigator.pop(context);
                          } else if (index == 18) {
                            titleAndBodychangeDrawer.updateIndex(18);
                            Navigator.pop(context);
                          } else if (index == 19) {
                            titleAndBodychangeDrawer.updateIndex(19);
                            Navigator.pop(context);
                          } else if (index == 20) {
                            titleAndBodychangeDrawer.updateIndex(20);
                            Navigator.pop(context);
                          } else if (index == 21) {
                            titleAndBodychangeDrawer.updateIndex(21);
                            Navigator.pop(context);
                          } else if (index == 22) {
                            titleAndBodychangeDrawer.updateIndex(22);
                            Navigator.pop(context);
                          } else if (index == 23) {
                            titleAndBodychangeDrawer.updateIndex(23);
                            Navigator.pop(context);
                          } else if (index == 24) {
                            titleAndBodychangeDrawer.updateIndex(24);
                            Navigator.pop(context);
                          } else if (index == 25) {
                            titleAndBodychangeDrawer.updateIndex(25);
                            Navigator.pop(context);
                          } else if (index == 26) {
                            titleAndBodychangeDrawer.updateIndex(26);
                            Navigator.pop(context);
                          } else if (index == 27) {
                            titleAndBodychangeDrawer.updateIndex(27);
                            Navigator.pop(context);
                          } else if (index == 28) {
                            titleAndBodychangeDrawer.updateIndex(28);
                            Navigator.pop(context);
                          } else if (index == 29) {
                            titleAndBodychangeDrawer.updateIndex(29);
                            Navigator.pop(context);
                          } else if (index == 30) {
                            titleAndBodychangeDrawer.updateIndex(30);
                            Navigator.pop(context);
                          } else if (index == 31) {
                            titleAndBodychangeDrawer.updateIndex(31);
                            Navigator.pop(context);
                          } else if (index == 32) {
                            titleAndBodychangeDrawer.updateIndex(32);
                            Navigator.pop(context);
                          } else if (index == 33) {
                            titleAndBodychangeDrawer.updateIndex(33);
                            Navigator.pop(context);
                          } else if (index == 34) {
                            titleAndBodychangeDrawer.updateIndex(34);
                            Navigator.pop(context);
                          } else if (index == 35) {
                            titleAndBodychangeDrawer.updateIndex(35);
                            Navigator.pop(context);
                          } else if (index == 36) {
                            titleAndBodychangeDrawer.updateIndex(36);
                            Navigator.pop(context);
                          } else if (index == 37) {
                            titleAndBodychangeDrawer.updateIndex(37);
                            Navigator.pop(context);
                          } else if (index == 38) {
                            titleAndBodychangeDrawer.updateIndex(38);
                            Navigator.pop(context);
                          } else if (index == 39) {
                            titleAndBodychangeDrawer.updateIndex(39);
                            Navigator.pop(context);
                          } else if (index == 40) {
                            titleAndBodychangeDrawer.updateIndex(40);
                            Navigator.pop(context);
                          } else if (index == 41) {
                            titleAndBodychangeDrawer.updateIndex(41);
                            Navigator.pop(context);
                          } else if (index == 42) {
                            titleAndBodychangeDrawer.updateIndex(42);
                            Navigator.pop(context);
                          } else if (index == 43) {
                            titleAndBodychangeDrawer.updateIndex(43);
                            Navigator.pop(context);
                          } else if (index == 44) {
                            titleAndBodychangeDrawer.updateIndex(44);
                            Navigator.pop(context);
                          } else if (index == 45) {
                            titleAndBodychangeDrawer.updateIndex(45);
                            Navigator.pop(context);
                          } else if (index == 46) {
                            titleAndBodychangeDrawer.updateIndex(46);
                            Navigator.pop(context);
                          } else if (index == 47) {
                            titleAndBodychangeDrawer.updateIndex(47);
                            Navigator.pop(context);
                          } else if (index == 48) {
                            titleAndBodychangeDrawer.updateIndex(48);
                            Navigator.pop(context);
                          } else if (index == 49) {
                            titleAndBodychangeDrawer.updateIndex(49);
                            Navigator.pop(context);
                          } else if (index == 50) {
                            titleAndBodychangeDrawer.updateIndex(50);
                            Navigator.pop(context);
                          } else if (index == 51) {
                            titleAndBodychangeDrawer.updateIndex(51);
                            Navigator.pop(context);
                          } else if (index == 52) {
                            titleAndBodychangeDrawer.updateIndex(52);
                            Navigator.pop(context);
                          } else if (index == 53) {
                            titleAndBodychangeDrawer.updateIndex(53);
                            Navigator.pop(context);
                          } else if (index == 54) {
                            titleAndBodychangeDrawer.updateIndex(54);
                            Navigator.pop(context);
                          } else if (index == 55) {
                            titleAndBodychangeDrawer.updateIndex(55);
                            Navigator.pop(context);
                          } else if (index == 56) {
                            titleAndBodychangeDrawer.updateIndex(56);
                            Navigator.pop(context);
                          } else if (index == 57) {
                            titleAndBodychangeDrawer.updateIndex(57);
                            Navigator.pop(context);
                          } else if (index == 58) {
                            titleAndBodychangeDrawer.updateIndex(58);
                            Navigator.pop(context);
                          } else if (index == 59) {
                            titleAndBodychangeDrawer.updateIndex(59);
                            Navigator.pop(context);
                          } else if (index == 60) {
                            titleAndBodychangeDrawer.updateIndex(60);
                            Navigator.pop(context);
                          } else if (index == 61) {
                            titleAndBodychangeDrawer.updateIndex(61);
                            Navigator.pop(context);
                          } else if (index == 62) {
                            titleAndBodychangeDrawer.updateIndex(62);
                            Navigator.pop(context);
                          } else if (index == 63) {
                            titleAndBodychangeDrawer.updateIndex(63);
                            Navigator.pop(context);
                          } else if (index == 64) {
                            titleAndBodychangeDrawer.updateIndex(64);
                            Navigator.pop(context);
                          } else if (index == 65) {
                            titleAndBodychangeDrawer.updateIndex(65);
                            Navigator.pop(context);
                          } else if (index == 66) {
                            titleAndBodychangeDrawer.updateIndex(66);
                            Navigator.pop(context);
                          } else if (index == 67) {
                            titleAndBodychangeDrawer.updateIndex(67);
                            Navigator.pop(context);
                          } else if (index == 68) {
                            titleAndBodychangeDrawer.updateIndex(68);
                            Navigator.pop(context);
                          } else if (index == 69) {
                            titleAndBodychangeDrawer.updateIndex(69);
                            Navigator.pop(context);
                          } else if (index == 70) {
                            titleAndBodychangeDrawer.updateIndex(70);
                            Navigator.pop(context);
                          } else if (index == 71) {
                            titleAndBodychangeDrawer.updateIndex(71);
                            Navigator.pop(context);
                          } else if (index == 72) {
                            titleAndBodychangeDrawer.updateIndex(72);
                            Navigator.pop(context);
                          } else if (index == 73) {
                            titleAndBodychangeDrawer.updateIndex(73);
                            Navigator.pop(context);
                          } else if (index == 74) {
                            titleAndBodychangeDrawer.updateIndex(74);
                            Navigator.pop(context);
                          } else if (index == 75) {
                            titleAndBodychangeDrawer.updateIndex(75);
                            Navigator.pop(context);
                          } else if (index == 76) {
                            titleAndBodychangeDrawer.updateIndex(76);
                            Navigator.pop(context);
                          } else if (index == 77) {
                            titleAndBodychangeDrawer.updateIndex(77);
                            Navigator.pop(context);
                          } else if (index == 78) {
                            titleAndBodychangeDrawer.updateIndex(78);
                            Navigator.pop(context);
                          } else if (index == 79) {
                            titleAndBodychangeDrawer.updateIndex(79);
                            Navigator.pop(context);
                          } else if (index == 80) {
                            titleAndBodychangeDrawer.updateIndex(80);
                            Navigator.pop(context);
                          } else if (index == 81) {
                            titleAndBodychangeDrawer.updateIndex(81);
                            Navigator.pop(context);
                          } else if (index == 82) {
                            titleAndBodychangeDrawer.updateIndex(82);
                            Navigator.pop(context);
                          } else if (index == 83) {
                            titleAndBodychangeDrawer.updateIndex(83);
                            Navigator.pop(context);
                          } else if (index == 84) {
                            titleAndBodychangeDrawer.updateIndex(84);
                            Navigator.pop(context);
                          } else if (index == 85) {
                            titleAndBodychangeDrawer.updateIndex(85);
                            Navigator.pop(context);
                          } else if (index == 86) {
                            titleAndBodychangeDrawer.updateIndex(86);
                            Navigator.pop(context);
                          } else if (index == 87) {
                            titleAndBodychangeDrawer.updateIndex(87);
                            Navigator.pop(context);
                          } else if (index == 88) {
                            titleAndBodychangeDrawer.updateIndex(88);
                            Navigator.pop(context);
                          } else if (index == 89) {
                            titleAndBodychangeDrawer.updateIndex(89);
                            Navigator.pop(context);
                          } else if (index == 90) {
                            titleAndBodychangeDrawer.updateIndex(90);
                            Navigator.pop(context);
                          } else if (index == 91) {
                            titleAndBodychangeDrawer.updateIndex(91);
                            Navigator.pop(context);
                          } else if (index == 92) {
                            titleAndBodychangeDrawer.updateIndex(92);
                            Navigator.pop(context);
                          } else if (index == 93) {
                            titleAndBodychangeDrawer.updateIndex(93);
                            Navigator.pop(context);
                          } else if (index == 94) {
                            titleAndBodychangeDrawer.updateIndex(94);
                            Navigator.pop(context);
                          } else if (index == 95) {
                            titleAndBodychangeDrawer.updateIndex(95);
                            Navigator.pop(context);
                          } else if (index == 96) {
                            titleAndBodychangeDrawer.updateIndex(96);
                            Navigator.pop(context);
                          } else if (index == 97) {
                            titleAndBodychangeDrawer.updateIndex(97);
                            Navigator.pop(context);
                          } else if (index == 98) {
                            titleAndBodychangeDrawer.updateIndex(98);
                            Navigator.pop(context);
                          } else if (index == 99) {
                            titleAndBodychangeDrawer.updateIndex(99);
                            Navigator.pop(context);
                          } else if (index == 100) {
                            titleAndBodychangeDrawer.updateIndex(100);
                            Navigator.pop(context);
                          } else if (index == 101) {
                            titleAndBodychangeDrawer.updateIndex(101);
                            Navigator.pop(context);
                          }

 */
