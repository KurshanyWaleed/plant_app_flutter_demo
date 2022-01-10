import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:palnt_app_flutter/screens/home/components/body.dart';

import 'bottom_nav_bar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builAppBar(),
      body: const Body(),
      bottomNavigationBar: const NavButtomBar(),
    );
  }

  AppBar builAppBar() {
    return AppBar(
      title: const Text('Plant App'),
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      ),
      centerTitle: true,
    );
  }
}
