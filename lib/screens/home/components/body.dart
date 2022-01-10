import 'package:flutter/material.dart';
import 'package:palnt_app_flutter/constants.dart';
import 'package:palnt_app_flutter/screens/home/components/featured_plants.dart';
import 'package:palnt_app_flutter/screens/home/components/recomend_plants.dart';
import 'package:palnt_app_flutter/screens/home/components/titlewithMoreBtn.dart';

import 'header_box_search.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithBoxSearch(size: size),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding - 5),
            child: Row(
              children: [
                const TitleWithCustomUnderLine(text: "Recomended"),
                const Spacer(),
                titleWithMoreButton(text: "More", press: () {}),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: RecomendPlants(),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding - 5),
            child: Row(
              children: [
                const TitleWithCustomUnderLine(text: "Featured Plants"),
                const Spacer(),
                titleWithMoreButton(text: "More", press: () {}),
              ],
            ),
          ),
          const FeaturedPlants(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedWidgetPlantCard(
              ImagePath: "assets/images/bottom_img_1.png", onPressed: () {}),
          FeaturedWidgetPlantCard(
              ImagePath: "assets/images/bottom_img_2.png", onPressed: () {}),
        ],
      ),
    );
  }
}
