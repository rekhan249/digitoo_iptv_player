import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/getx_controllers/get_live_category_all.dart';
import 'package:digiitoo_iptv_player/models/live_stream_categories.dart';
import 'package:digiitoo_iptv_player/utils/video_player_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveAllCinematic extends StatelessWidget {
  const LiveAllCinematic({super.key});

  @override
  Widget build(BuildContext context) {
    GetLiveStreamAndCategoriesAll getLiveStreamAndCategoriesAll =
        Get.put(GetLiveStreamAndCategoriesAll());
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: FutureBuilder<List<LiveStreamAndCategory?>>(
            future: getLiveStreamAndCategoriesAll
                .getLiveStreamAndCategoryAADataFrom(context),
            builder: (context,
                AsyncSnapshot<List<LiveStreamAndCategory?>> snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: Colors.white,
                ));
              }
              final dataFromSnapshot = snapshot.data!;
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 5.5),
                shrinkWrap: true,
                itemCount: dataFromSnapshot.length,
                itemBuilder: (context, index) {
                  final singleData = dataFromSnapshot[index];
                  return Container(
                    margin: const EdgeInsets.all(4.0),
                    decoration: const BoxDecoration(color: blackColors),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoPlayerScreen(
                                    streamId: singleData.streamId)));
                      },
                      child: Row(
                        children: [
                          singleData!.streamIcon.isEmpty
                              ? Image.network(cinematicChannelImages[0])
                              : Image.network(
                                  singleData.streamIcon.toString(),
                                  scale: 1,
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    }
                                    return const Center(
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.white),
                                      ),
                                    );
                                  },
                                ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  singleData.name.toString(),
                                  style: const TextStyle(
                                      color: whiteColors, fontSize: 14),
                                ),
                                Text(
                                  singleData.categoryId.toString(),
                                  style: const TextStyle(color: whiteColors),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ));
  }
}
