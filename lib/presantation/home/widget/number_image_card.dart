// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants/constants.dart';

const numberimage =
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/1XS1oqL89opfnbLl8WnZY1O1uJx.jpg';

class NumberImageCard extends StatelessWidget {
  const NumberImageCard({
    Key? key,
    required this.index,
    required this.imageUrl,
  }) : super(key: key);
  final int index;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 120,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: kRadius12,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(imageUrl),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: -5,
            bottom: -15,
            child: BorderedText(
              strokeWidth: 2.5,
              strokeColor: kWhiteColor,
              child: Text(
                '${index + 1}',
                style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontSize: 120,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    decorationColor: kWhiteColor,
                    color: kBlackColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
