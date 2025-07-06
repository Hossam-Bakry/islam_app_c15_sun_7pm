import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_7pm/core/constants/assets.dart';
import 'package:islami_app_c15_sun_7pm/models/sura_data_model.dart';
import 'package:islami_app_c15_sun_7pm/modules/layout/quran/quran_details_view.dart';

class SuraListItem extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const SuraListItem({super.key, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).pushNamed(QuranDetailsView.routeName, arguments: suraDataModel);
      },
      child: Row(
        children: [
          Container(
            width: 35,
            height: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.suraNumberIcn),
                // fit: BoxFit.cover,
              ),
            ),
            child: Text(
              suraDataModel.suraID,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraDataModel.suraNameEN,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(color: Colors.white),
              ),
              Text(
                "${suraDataModel.suraVersesNumber} Verses",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: Colors.white),
              ),
            ],
          ),
          Spacer(),
          Text(
            suraDataModel.suraNameAR,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
