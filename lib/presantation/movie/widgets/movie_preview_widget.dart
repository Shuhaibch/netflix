import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/constants/constants.dart';

class MoviePreviewWidget extends StatelessWidget {
  final String imagebg;

  const MoviePreviewWidget({
    super.key,
    required this.mediaQuery,
    this.imagebg = netflixbg,
  });

  final MediaQueryData mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: mediaQuery.size.width,
          height: mediaQuery.size.height * .30,
          child: Image(
            image: NetworkImage(imagebg),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(.8),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cast_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: mediaQuery.size.width * .03),
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(.8),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: mediaQuery.size.width * .02),
            ],
          ),
        ),
        Positioned(
          left: 15,
          bottom: 18,
          child: Row(
            children: [
              Text(
                "Preview",
                style: TextStyle(
                    fontFamily: GoogleFonts.quicksand().fontFamily,
                    fontSize: 18,
                    letterSpacing: 1),
              ),
              SizedBox(
                width: mediaQuery.size.width * .62,
              ),
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(.8),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
