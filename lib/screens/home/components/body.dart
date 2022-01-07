import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:palnt_app_flutter/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * .21,
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                // alignment: Alignment.center,
                height: size.height * .2 - 27,
                padding: const EdgeInsets.only(
                    bottom: 25 + kDefaultPadding, right: 10, left: 10),
                // padding: const EdgeInsets.symmetric(
                //     horizontal: kDefaultPadding, vertical: 30),
                decoration: BoxDecoration(
                    color: customGreen,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36))),
                child: Row(
                  children: [
                    Text(
                      'Hi Waleed ! ',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/images/logo.png",
                      width: 50,
                      height: 50,
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 54,
                    margin:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 10),
                              blurRadius: 50,
                              color: customGreen.withOpacity(0.23))
                        ],
                        color: Colors.white),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            onChanged: (value) => {},
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle:
                                  TextStyle(color: customGreen.withOpacity(.5)),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              //suffixIcon: const Icon(Icons.search)
                            ),
                          ),
                        ),
                        SvgPicture.asset("assets/icons/search.svg")
                      ],
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
