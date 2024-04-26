import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/getx_controllers/get_vod_category.dart';
import 'package:digiitoo_iptv_player/models/live_category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HindiMovies1718 extends StatelessWidget {
  const HindiMovies1718({super.key});

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
                final dataFromSnapshot = snapshot.data;
                return GridView.builder(
                  shrinkWrap: true,
                  itemCount: dataFromSnapshot!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5, childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
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
                                dataFromSnapshot[index]!
                                    .categoryName
                                    .toString(),
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
