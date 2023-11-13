import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class MainImageCard extends StatelessWidget {
  final String imageUrl;

  const MainImageCard({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        width: 120,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: kRadius12,
          image: DecorationImage(
            image: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
