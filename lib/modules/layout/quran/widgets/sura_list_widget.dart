import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_7pm/core/constants/constants.dart';
import 'package:islami_app_c15_sun_7pm/modules/layout/quran/widgets/sura_list_item.dart';

class SuraListWidget extends StatelessWidget {
  const SuraListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Sura's List", style: Theme.of(context).textTheme.bodyLarge),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 10),
            itemBuilder: (context, index) {
              return SuraListItem(
                suraDataModel: Constants.kSuraData[index],
              );
            },
            separatorBuilder: (context, index) {
              return Divider(indent: 40, endIndent: 40);
            },
            itemCount: 114,
          ),
        ],
      ),
    );
  }
}
