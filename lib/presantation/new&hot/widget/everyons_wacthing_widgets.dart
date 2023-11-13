// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../home/widget/main_custom_button.dart';
import 'hot_new_image_widget.dart';

class EveryonsWacthingWidget extends StatelessWidget {
  final String posterPath;
  final String movieName;
  final String description;
  const EveryonsWacthingWidget({
    Key? key,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movieName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          kheight,
          Text(
            description,
            style: const TextStyle(color: Colors.grey, fontSize: 16),
          ),
          kheight50,
          HotNewImageWidget(imageUrl: posterPath),
          kheight,
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MainCustomButton(
                icon: Icons.send,
                title: 'Share',
                iconSize: 30,
                textSize: 18,
              ),
              kwidth2,
              MainCustomButton(
                icon: CupertinoIcons.add,
                title: 'My List',
                iconSize: 30,
                textSize: 18,
              ),
              kwidth2,
              MainCustomButton(
                icon: CupertinoIcons.play,
                title: 'Play',
                iconSize: 30,
                textSize: 18,
              ),
              kwidth2
            ],
          )
        ],
      ),
    );
  }
}
