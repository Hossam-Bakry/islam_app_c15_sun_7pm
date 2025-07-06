import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c15_sun_7pm/core/constants/assets.dart';
import 'package:islami_app_c15_sun_7pm/core/constants/colors_pallete.dart';
import 'package:islami_app_c15_sun_7pm/models/sura_data_model.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = 'quran_details_view';

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> verseList = [];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final data = ModalRoute.of(context)!.settings.arguments as SuraDataModel;

    // async
    if (verseList.isEmpty) loadDataFromAssets(data.suraID);
    return Scaffold(
      backgroundColor: ColorsPallete.quranDetailsBackgroundColor,
      appBar: AppBar(title: Text(data.suraNameEN)),
      body: Stack(
        alignment: Alignment.center,
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
          Column(
            children: [
              Text(
                data.suraNameAR,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: ColorsPallete.primaryColor,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (context, index) {
                    return Text(
                      " [${index + 1}] ${verseList[index]}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: ColorsPallete.primaryColor,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 5);
                  },
                  itemCount: verseList.length,
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
        ],
      ),
    );
  }
  // sync vs async
  Future<void> loadDataFromAssets(String suraID) async {
    String content = await rootBundle.loadString("assets/files/$suraID.txt");
    verseList = content.split("\n");
    setState(() {});
    print(verseList.length);
    print(content);
  }
}
