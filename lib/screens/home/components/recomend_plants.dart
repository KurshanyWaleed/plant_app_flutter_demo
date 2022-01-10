import 'package:flutter/material.dart';
import 'package:palnt_app_flutter/constants.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCrad(
            country: "Russia",
            image: "assets/images/image_1.png",
            title: "Samantha",
            price: 5000,
            onPress: () {},
          ),
          RecomendPlantCrad(
            country: "Russia",
            image: "assets/images/image_2.png",
            title: "Samantha",
            price: 5000,
            onPress: () {},
          ),
          RecomendPlantCrad(
            country: "Russia",
            image: "assets/images/image_3.png",
            title: "Samantha",
            price: 5000,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCrad extends StatelessWidget {
  const RecomendPlantCrad(
      {Key? key,
      required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.onPress})
      : super(key: key);

  final String image, title, country;
  final int price;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(7),
      // ? cover 40% of total width
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: onPress,
            child: Container(
              margin: const EdgeInsets.only(
                  left: 0, top: 0, bottom: kDefaultPadding * .5),
              padding: const EdgeInsets.all(kDefaultPadding / 3),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(.23)),
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: title.toUpperCase() + "\n",
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                            text: country.toUpperCase(),
                            style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5))),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text("\$" + price.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: kPrimaryColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
