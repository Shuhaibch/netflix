// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/presantation/profile/screen_profile.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          kwidth,
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              // fontWeight: FontWeight.w900,
              fontFamily: GoogleFonts.rowdies().fontFamily,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.cast,
            size: 30,
          ),
          kwidth,
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ));
            },
            child: const SizedBox(
              width: 30,
              height: 30,
              child: Image(
                  image: NetworkImage(
                      'https://wallpapers.com/images/hd/netflix-profile-pictures-1000-x-1000-vnl1thqrh02x7ra2.jpg')),
            ),
          ),
          kwidth,
        ],
      ),
    );
  }
}
