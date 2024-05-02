import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/getx_controllers/get_vod_category.dart';
import 'package:digiitoo_iptv_player/models/live_category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllCineManiaChannels extends StatelessWidget {
  const AllCineManiaChannels({super.key});

  @override
  Widget build(BuildContext context) {
    GetVodCategories getVodCategories = Get.put(GetVodCategories());
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
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
                      crossAxisCount: 6, childAspectRatio: 0.8),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 4, bottom: 8),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(145, 5, 40, 7),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Image.network(
                                height: 80,
                                centerSlice: Rect.largest,
                                fit: BoxFit.fitWidth,
                                cinematicChannelImages[index],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              textAlign: TextAlign.center,
                              dataFromSnapshot[index]!.categoryName.toString(),
                              style: const TextStyle(
                                  color: whiteColors, fontSize: 10),
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
