import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/getx_controllers/get_livetv_category_getx.dart';
import 'package:digiitoo_iptv_player/models/live_category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryChannelLive extends StatelessWidget {
  const HistoryChannelLive({super.key});

  @override
  Widget build(BuildContext context) {
    GetLiveTvCategories getLiveTvCategories = Get.put(GetLiveTvCategories());
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: FutureBuilder<List<LiveCategories?>>(
            future: getLiveTvCategories.getLiveTvCategoriesDataFrom(context),
            builder: (context, AsyncSnapshot<List<LiveCategories?>> snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: Colors.white,
                ));
              }
              final dataFromSnapshot = snapshot.data!
                  .where((element) =>
                      element!.categoryName!.contains("WatcingHistory"))
                  .toList();
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 4.3),
                shrinkWrap: true,
                itemCount: dataFromSnapshot.length,
                itemBuilder: (context, index) {
                  final singleData = dataFromSnapshot[index];
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      decoration: const BoxDecoration(color: blackColors),
                      child: ListTile(
                        leading: Image.network(
                          cinematicChannelImages[index],
                        ),
                        title: Text(
                          singleData!.categoryName.toString(),
                          style:
                              const TextStyle(color: whiteColors, fontSize: 14),
                        ),
                        subtitle: Text(
                          singleData.categoryId.toString(),
                          style: const TextStyle(color: whiteColors),
                        ),
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
/*
GestureDetector(
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

*/