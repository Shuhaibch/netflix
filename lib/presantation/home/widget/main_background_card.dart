// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import 'main_custom_button.dart';

class MainBackgroundCard extends StatelessWidget {
  final String imageUrl;
  const MainBackgroundCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.dstATop,
              ),
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Main_Button_Row(),
      ],
    );
  }

  Positioned Main_Button_Row() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const MainCustomButton(
              icon: Icons.add,
              title: 'My List',
            ),
            _mainPlayButton(),
            const MainCustomButton(
              icon: Icons.info,
              title: 'Info',
            )
          ],
        ),
      ),
    );
  }

  TextButton _mainPlayButton() {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kWhiteColor),
      ),
      icon: const Icon(
        Icons.play_arrow,
        color: kBlackColor,
        size: 25,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(
              color: kBlackColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
