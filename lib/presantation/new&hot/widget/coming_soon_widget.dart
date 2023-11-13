// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/constants.dart';
import '../../home/widget/main_custom_button.dart';
import 'hot_new_image_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String day;
  final String month;
  final String posterPath;
  final String movieName;
  final String description;

  const ComingSoonWidget({
    Key? key,
    required this.id,
    required this.day,
    required this.month,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: date_widget(),
          ),
        ),
        SizedBox(
          width: size.width - 60,
          height: 500,
          child: Column(
            children: [
              HotNewImageWidget(imageUrl: posterPath),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        movieName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: GoogleFonts.dancingScript().fontFamily,
                          letterSpacing: -2,
                        ),
                      ),
                    ),
                    // const Spacer(),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          MainCustomButton(
                            icon: CupertinoIcons.bell,
                            title: 'Remind Me',
                            iconSize: 25,
                            textSize: 13,
                          ),
                          kwidth2,
                          MainCustomButton(
                            icon: CupertinoIcons.info,
                            title: 'Info',
                            iconSize: 25,
                            textSize: 15,
                          ),
                          kheight,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              kheight,
              Row(
                children: [
                  Text('Coming on $day $month'),
                ],
              ),
              kheight,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(
                      tNetflixSeries,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    movieName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kheight,
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  SizedBox date_widget() {
    return SizedBox(
      width: 50,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            month,
            style: TextStyle(
                fontFamily: GoogleFonts.robotoCondensed().fontFamily,
                fontSize: 26,
                color: Colors.white60),
          ),
          Text(
            day,
            style: TextStyle(
              fontFamily: GoogleFonts.anton().fontFamily,
              fontSize: 30,
              fontWeight: FontWeight.w600,
              letterSpacing: 7,
            ),
          )
        ],
      ),
    );
  }
}
