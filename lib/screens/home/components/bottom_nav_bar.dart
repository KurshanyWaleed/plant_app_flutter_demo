import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class NavButtomBar extends StatelessWidget {
  const NavButtomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: () => {},
          ),
          IconButton(
            color: kPrimaryColor,
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () => {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () => {},
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * .09,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38))
      ]),
    );
  }
}
