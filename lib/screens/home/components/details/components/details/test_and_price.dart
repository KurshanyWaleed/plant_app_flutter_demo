import 'package:flutter/material.dart';
import 'package:palnt_app_flutter/constants.dart';

class TextAndPrice extends StatelessWidget {
  const TextAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0, left: 10, top: 0, right: 10),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "$title\n",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
            TextSpan(
                text: country,
                style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300))
          ])),
          const Spacer(),
          Text(
            "\$" + price.toString(),
            style:
                TextStyle(fontSize: 20, color: kPrimaryColor.withOpacity(.5)),
          )
        ],
      ),
    );
  }
}
