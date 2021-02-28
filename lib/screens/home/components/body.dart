import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/home/components/header_with_searchbox.dart';
import 'package:plant/screens/home/components/recomend_plants.dart';
import 'package:plant/screens/home/components/title_with_more_btn.dart';

import 'featured_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //it will provide us total height and width os our screen
    Size size = MediaQuery.of(context).size;
    //it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recomended', press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
