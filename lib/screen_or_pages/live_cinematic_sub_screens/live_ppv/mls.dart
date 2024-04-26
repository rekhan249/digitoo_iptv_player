import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/getx_controllers/get_livetv_category_getx.dart';
import 'package:digiitoo_iptv_player/models/live_category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mls extends StatelessWidget {
  const Mls({super.key});

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
                      element!.categoryName!.contains("LIVE | MLS"))
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
