import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:palnt_app_flutter/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.iconPath,
  }) : super(key: key);

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 60,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 20,
              color: kPrimaryColor.withOpacity(.22)),
          BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 20,
              color: Colors.white.withOpacity(.22))
        ],
      ),
      child: SvgPicture.asset(iconPath),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
    );
  }
}
