import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/getx_controllers/get_livetv_category_getx.dart';
import 'package:digiitoo_iptv_player/models/live_category_model.dart';
import 'package:digiitoo_iptv_player/screen_or_pages/live_cinematic_sub_screens/category_particular_id/category_particular_id.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveTewntyCinematice extends StatelessWidget {
  const LiveTewntyCinematice({super.key});

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
                      element!.categoryName!.contains("24/7 CineMania"))
                  .toList();
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 5),
                shrinkWrap: true,
                itemCount: dataFromSnapshot.length,
                itemBuilder: (context, index) {
                  final singleData = dataFromSnapshot[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CategoryParticularId(index: index),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(0),
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
