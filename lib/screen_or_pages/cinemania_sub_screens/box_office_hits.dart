import 'package:digiitoo_iptv_player/constants/colors.dart';
import 'package:digiitoo_iptv_player/constants/constants.dart';
import 'package:flutter/material.dart';

class BoxOffHits extends StatelessWidget {
  const BoxOffHits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: GridView.builder(
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
                    Image.network(cinematicChannelImages[index]),
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
          ),
        ));
  }
}
