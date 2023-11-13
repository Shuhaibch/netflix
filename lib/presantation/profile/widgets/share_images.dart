import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

const _shareImage = [
  "lib/core/Assets/images/msger.png",
  "lib/core/Assets/images/fb.png",
  "lib/core/Assets/images/gmail.png",
];

class ShareImageButtons extends StatelessWidget {
  const ShareImageButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SizedBox(
                child: Image(
                  image: AssetImage(_shareImage[0]),
                  height: 40,
                  width: 40,
                ),
              ),
              kheight,
              const Text('Messenger')
            ],
          ),
          const VerticalDivider(
            color: Colors.grey,
            thickness: 1,
          ),
          Column(
            children: [
              SizedBox(
                child: Image(
                  image: AssetImage(_shareImage[1]),
                  height: 40,
                  width: 40,
                ),
              ),
              kheight,
              const Text('Facebook')
            ],
          ),
          const VerticalDivider(
            color: Colors.grey,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Column(
              children: [
                SizedBox(
                  child: Image(
                    image: AssetImage(_shareImage[2]),
                    height: 40,
                    width: 40,
                  ),
                ),
                kheight,
                const Text('Gmail')
              ],
            ),
          ),
          const VerticalDivider(
            color: Colors.grey,
            thickness: 1,
          ),
          Column(
            children: [
              SizedBox(
                  child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              )),
              const Text('Messenger')
            ],
          ),
        ],
      ),
    );
  }
}
