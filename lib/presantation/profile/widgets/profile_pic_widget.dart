import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../home/screen_home.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Column(
          children: [
            SizedBox(
              height: 90,
              width: 65,
              child: Column(
                children: [
                  Image(
                    image: NetworkImage(profile),
                    height: 65,
                    width: 65,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      'Dj Shuhaib',
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        kwidth,
        SizedBox(
          height: 90,
          width: 65,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                highlightColor: kWhiteColor,
                color: kWhiteColor,
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 35,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Add Profile',
                  style: TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
