import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:palnt_app_flutter/constants.dart';

// ignore: camel_case_types
class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
                child: Column(
              children: [
                IconButton(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset("assets/icons/back_arrow.svg"))
              ],
            )),
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
        )
      ],
    );
  }
}
