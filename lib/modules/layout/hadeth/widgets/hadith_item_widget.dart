import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_7pm/core/constants/assets.dart';
import 'package:islami_app_c15_sun_7pm/core/constants/colors_pallete.dart';

class HadithItemWidget extends StatelessWidget {
  const HadithItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsPallete.primaryColor,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(Assets.hadethCardImg),
          // fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Assets.vectorLeftIcn, height: 90, width: 90),
                    Image.asset(Assets.vectorRightIcn, height: 90, width: 90),
                  ],
                ),
              ),
              Image.asset(Assets.mosqueImg),
            ],
          ),
        ],
      ),
    );
  }
}
