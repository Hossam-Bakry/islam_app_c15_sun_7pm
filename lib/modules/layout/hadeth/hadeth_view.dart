import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_7pm/core/constants/assets.dart';
import 'package:islami_app_c15_sun_7pm/modules/layout/hadeth/widgets/hadith_item_widget.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.hadethBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        spacing: 30,
        children: [
          Image.asset(Assets.headerLogo),
          CarouselSlider(
            items: [HadithItemWidget()],
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.6,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
