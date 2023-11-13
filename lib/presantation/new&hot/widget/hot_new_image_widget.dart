// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';

class HotNewImageWidget extends StatelessWidget {
  const HotNewImageWidget({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 180,
          child: Image.network(
            imageUrl,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) {
              return Image.network(netflixbg);
            },
          ),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(.5),
            radius: 22,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off_outlined,
                size: 23,
                color: kWhiteColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
