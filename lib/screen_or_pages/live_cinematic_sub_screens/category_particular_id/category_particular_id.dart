import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/getx_controllers/get_live_category_all.dart';
import 'package:digiitoo_iptv_player/models/live_stream_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryParticularId extends StatelessWidget {
  final int index;
  const CategoryParticularId({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    GetLiveStreamAndCategories getLiveStreamAndCategories =
        Get.put(GetLiveStreamAndCategories());
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: FutureBuilder<List<LiveStreamAndCategory?>>(
            future: getLiveStreamAndCategories.getLiveStreamAndCategoryDataFrom(
                context, index),
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
                    crossAxisCount: 2, childAspectRatio: 4.5),
                shrinkWrap: true,
                itemCount: dataFromSnapshot.length,
                itemBuilder: (context, index) {
                  final singleData = dataFromSnapshot[index];
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      decoration: const BoxDecoration(color: blackColors),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.network(
                                singleData!.streamIcon.toString()),
                            title: Text(
                              singleData.name.toString(),
                              style: const TextStyle(
                                  color: whiteColors, fontSize: 14),
                            ),
                            subtitle: Text(
                              singleData.categoryId.toString(),
                              style: const TextStyle(color: whiteColors),
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
