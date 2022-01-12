import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:palnt_app_flutter/constants.dart';

import 'icon_card.dart';

class ImageWithIcons extends StatelessWidget {
  const ImageWithIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding, top: 0),
      child: SizedBox(
        height: size.height * .8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
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
                          icon:
                              SvgPicture.asset("assets/icons/back_arrow.svg")),
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
    );
  }
}
