import 'package:flutter/material.dart';
import 'package:palnt_app_flutter/constants.dart';
import 'package:palnt_app_flutter/screens/home/components/details/components/details/imag_with_icon.dart';
import 'package:palnt_app_flutter/screens/home/components/details/components/details/test_and_price.dart';

// ignore: camel_case_types
class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageWithIcons(size: size),
          const TextAndPrice(title: "Angilica", country: "Russia", price: 400),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  child: const Text("Buy Now"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.green,
                    elevation: 20,
                    minimumSize: const Size(100, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(10))),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: const Size(100, 50),
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(10))),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
