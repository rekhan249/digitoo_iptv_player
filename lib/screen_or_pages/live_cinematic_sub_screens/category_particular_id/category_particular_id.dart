import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/getx_controllers/get_live_category_all.dart';
import 'package:digiitoo_iptv_player/models/live_stream_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryParticularId extends StatelessWidget {
  final int index;
  const CategoryParticularId({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    GetLiveStreamAndCategoriesAll getLiveStreamAndCategories =
        Get.put(GetLiveStreamAndCategoriesAll());
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/imageback.jpeg",
                  ),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: FutureBuilder<List<LiveStreamAndCategory?>>(
              future: getLiveStreamAndCategories
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
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 4),
                        decoration: BoxDecoration(
                            border: Border.all(color: blackColors)),
                        child: Row(
                          children: [
                            singleData!.streamIcon.isEmpty
                                ? Image.network(
                                    height: 55, cinematicChannelImages[0])
                                : Image.network(
                                    height: 55,
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
                            Container(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                maxLines: 1,
                                singleData.name.toString(),
                                style: const TextStyle(
                                    color: whiteColors, fontSize: 12),
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
          ),
        ));
  }
}
