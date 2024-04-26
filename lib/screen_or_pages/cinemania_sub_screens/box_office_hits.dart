import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/getx_controllers/get_vod_category.dart';
import 'package:digiitoo_iptv_player/models/live_category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BoxOffHits extends StatelessWidget {
  const BoxOffHits({super.key});

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
                  return const Center(child: CircularProgressIndicator());
                }
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: cinematicChannelImages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6, childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                          color: blackColors,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          Image.network(
                              height: 80, cinematicChannelImages[index]),
                          const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              "All are new and different",
                              style: TextStyle(color: whiteColors),
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
