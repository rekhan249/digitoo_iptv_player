import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:digiitoo_iptv_player/utils/video_player_screen.dart';
import 'package:flutter/material.dart';

class HistoryChannelLive extends StatelessWidget {
  const HistoryChannelLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 4.3),
            shrinkWrap: true,
            itemCount: cinematicChannelImages.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                VideoPlayerScreen(index: index)));
                  }
                },
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  decoration: const BoxDecoration(color: blackColors),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.network(
                          cinematicChannelImages[index],
                        ),
                        title: const Text(
                          "All are new and different",
                          style: TextStyle(color: whiteColors),
                        ),
                        subtitle: const Text(
                          "All are new and different",
                          style: TextStyle(color: whiteColors),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
