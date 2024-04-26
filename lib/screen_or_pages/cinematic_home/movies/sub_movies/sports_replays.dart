import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/getx_controllers/get_vod_category.dart';
import 'package:digiitoo_iptv_player/models/live_category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SportsReplays extends StatelessWidget {
  const SportsReplays({super.key});

  @override
  Widget build(BuildContext context) {
    GetVodCategories getVodCategories = Get.put(GetVodCategories());
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: FutureBuilder<List<LiveCategories?>>(
              future: getVodCategories.getVodCategoriesDataFrom(context),
              builder:
                  (context, AsyncSnapshot<List<LiveCategories?>> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: Colors.white,
                  ));
                }
                final dataFromSnapshot = snapshot.data!
                    .where((element) =>
                        element!.categoryName!.contains("Sports Replays"))
                    .toList();
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: dataFromSnapshot.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5, childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    final moviesSinge = dataFromSnapshot[index];
                    return Container(
                      margin: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                          color: blackColors,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.network(
                              cinematicChannelImages[index],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 4, right: 4, top: 12),
                            child: Center(
                              child: Text(
                                moviesSinge!.categoryName.toString(),
                                style: const TextStyle(color: whiteColors),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }),
        ));
  }
}
