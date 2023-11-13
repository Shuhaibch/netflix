import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';

class MiddleDetailsSection extends StatelessWidget {
  final String title;
  final String releaseDate;
  final String description;
  final String language;

  const MiddleDetailsSection({
    super.key,
    required this.mediaQuery,
    required this.title,
    required this.releaseDate,
    required this.description,
    required this.language,
  });

  final MediaQueryData mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontFamily: GoogleFonts.merriweatherSans().fontFamily,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              releaseDate,
              style: TextStyle(
                fontSize: 18,
                fontFamily: GoogleFonts.quicksand().fontFamily,
                letterSpacing: 1,
              ),
            ),
          ),

          //buttons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: mediaQuery.size.width - 5,
              child: TextButton.icon(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(kWhiteColor)),
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: kBlackColor,
                ),
                label: const Text(
                  "Play",
                  style: TextStyle(
                      color: kBlackColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: mediaQuery.size.width - 5,
              child: TextButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.grey.withOpacity(.5))),
                onPressed: () {},
                icon: const Icon(
                  Icons.file_download_outlined,
                  color: kWhiteColor,
                ),
                label: const Text(
                  "Download",
                  style: TextStyle(
                      color: kWhiteColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),

          //movie description

          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
            child: Text(
              description,
              style: TextStyle(
                fontFamily: GoogleFonts.quicksand().fontFamily,
                fontSize: 16,
                color: kWhiteColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
            child: Text(
              "Original Language : $language",
              style: TextStyle(
                fontFamily: GoogleFonts.quicksand().fontFamily,
                fontSize: 14,
                color: Colors.grey[400],
              ),
            ),
          )
        ],
      ),
    );
  }
}
