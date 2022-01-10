import 'package:flutter/material.dart';
import 'package:palnt_app_flutter/constants.dart';

class FeaturedWidgetPlantCard extends StatelessWidget {
  const FeaturedWidgetPlantCard({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.ImagePath,
    required this.onPressed,
  }) : super(key: key);
  // ignore: non_constant_identifier_names
  final String ImagePath;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding / 2,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * .8,
        height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(ImagePath), fit: BoxFit.cover)),
      ),
    );
  }
}
