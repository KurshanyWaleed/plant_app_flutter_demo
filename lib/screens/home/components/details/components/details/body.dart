import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:palnt_app_flutter/constants.dart';

import 'icon_card.dart';

// ignore: camel_case_types
class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
            child: SizedBox(
              height: size.height * .8,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: kDefaultPadding),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: kDefaultPadding),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: SvgPicture.asset(
                                    "assets/icons/back_arrow.svg")),
                          ),
                          const Spacer(),
                          const IconCard(iconPath: "assets/icons/sun.svg"),
                          const IconCard(iconPath: "assets/icons/icon_2.svg"),
                          const IconCard(iconPath: "assets/icons/icon_3.svg"),
                          const IconCard(iconPath: "assets/icons/icon_4.svg"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * .8,
                    width: size.width * .75,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 60,
                            color: kPrimaryColor.withOpacity(.29),
                          )
                        ],
                        image: const DecorationImage(
                            alignment: Alignment.centerLeft,
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img.png"))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
