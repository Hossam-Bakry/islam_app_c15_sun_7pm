import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_7pm/core/constants/assets.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.tasbehBackground),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
