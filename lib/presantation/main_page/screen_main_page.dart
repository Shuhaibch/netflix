import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presantation/downloads/screen_downloads.dart';
import 'package:netflix_app/presantation/fast_laugh/Screen_FastLaugh.dart';
import 'package:netflix_app/presantation/home/screen_home.dart';
import 'package:netflix_app/presantation/new&hot/screen_new&hot.dart';
import 'package:netflix_app/presantation/search/screen_search.dart';

import 'widgets/bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages = [
    const ScreenHomePage(),
    const Screennewhot(),
    const ScreenFastLaugh(),
    Screensearch(),
    ScreenDownlods(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
