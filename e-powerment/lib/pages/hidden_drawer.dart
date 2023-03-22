import 'package:e_empowerment/Profil.dart';
import 'package:e_empowerment/pages/homepage.dart';
import 'package:e_empowerment/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Colors.white
  );

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Profil',
          colorLineSelected: Colors.deepPurple,

          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,

        ),
         ProfilUi(),
      ),

      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Homepage',
          colorLineSelected: Colors.deepPurple,

          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,

        ),
        const HomePage(),
      ),

      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Presentation de  l\'application',
          colorLineSelected: Colors.deepPurple,

          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,

        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Recommander l\'application',
          colorLineSelected: Colors.deepPurple,

          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,

        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Parler à quelqu\'un ! ',
          colorLineSelected: Colors.deepPurple,

          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,

        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Des ressources utiles ',
          colorLineSelected: Colors.deepPurple,

          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,

        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Nous contacter ',
          colorLineSelected: Colors.deepPurple,

          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,

        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Qui peut voir mes données ? ',
          colorLineSelected: Colors.deepPurple,

          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,

        ),
        const HomePage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages,
        backgroundColorMenu: Colors.deepPurple.shade100,

        initPositionSelected: 0,
      slidePercent: 70,// width fo the slide bar menu
      contentCornerRadius: 20,
    );
  }
}