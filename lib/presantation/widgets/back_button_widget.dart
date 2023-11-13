import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/colors.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: kWhiteColor,
          ),
        ),
        Text(
          'Profile & More',
          style: TextStyle(
            fontSize: 20,
            color: kWhiteColor,
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontWeight: FontWeight.bold,
            letterSpacing: .8,
          ),
        )
      ],
    );
  }
}
