import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/presantation/movie/widgets/lists/more_like_this.dart';
import 'package:netflix_app/presantation/movie/widgets/lists/trailers_list.dart';
import 'package:netflix_app/presantation/movie/widgets/lists/treanding_list.dart';

class TabBarList extends StatelessWidget {
  const TabBarList({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return DefaultTabController(
      length: 3,
      child: SizedBox(
        height: 500,
        width: mediaQuery.size.width,
        child: Column(
          children: [
            TabBar(
              indicatorColor: const Color.fromARGB(255, 148, 10, 0),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 5,
              indicatorPadding: const EdgeInsets.symmetric(vertical: -2),
              dividerColor: const Color.fromARGB(255, 148, 10, 0),
              isScrollable: true,
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Treanding',
                    style: TextStyle(
                      fontFamily: GoogleFonts.kanit().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'More Like This',
                    style: TextStyle(
                      fontFamily: GoogleFonts.kanit().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Trailers & More',
                    style: TextStyle(
                      fontFamily: GoogleFonts.kanit().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(children: [
                TreandingListWidgets(),
                MoreLikeListWidgets(),
                TrailersListWidgets(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
