// ignore_for_file: public_member_api_docs, sort_constructors_first, no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/presantation/home/widget/main_background_card.dart';

import 'package:netflix_app/presantation/home/widget/number_card_tile.dart';
import 'package:netflix_app/presantation/profile/screen_profile.dart';

import '../../application/home/home_bloc.dart';
import '../movie/screen_movie.dart';
import '../splashScreen/splashScreen.dart';
import '../widgets/main_card_tile.dart';

const profile =
    'https://wallpapers.com/images/hd/netflix-profile-pictures-1000-x-1000-vnl1thqrh02x7ra2.jpg';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHomePage extends StatefulWidget {
  const ScreenHomePage({super.key});

  @override
  State<ScreenHomePage> createState() => _ScreenHomePageState();
}

class _ScreenHomePageState extends State<ScreenHomePage> {
  @override
  void initState() {
    const ScreenSplash();
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const LoadDataInHomeScreen());
    });

    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
          child: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      final _top10 = state.top10List.map((e) {
                        return "$imageAppendUrl${e.posterPath}";
                      }).toList();
                      final _top10id = state.top10List.map((e) {
                        return e.id;
                      }).toList();

                      final _releasedPastYear =
                          state.releasedIntThePastYearList.map((e) {
                        return "$imageAppendUrl${e.posterPath}";
                      }).toList();
                      final _releasedPastYearid =
                          state.releasedIntThePastYearList.map((e) {
                        return e.id;
                      }).toList();

                      final _trendingNow = state.trendingList.map((e) {
                        return "$imageAppendUrl${e.posterPath}";
                      }).toList();
                      final _trendingNowid = state.trendingList.map((e) {
                        return e.id;
                      }).toList();

                      final _tenseDramas = state.tenseDramaList.map((e) {
                        return "$imageAppendUrl${e.posterPath}";
                      }).toList();
                      final _tenseDramasid = state.tenseDramaList.map((e) {
                        return e.id;
                      }).toList();

                      final _southIndian = state.southIndianCinema.map((e) {
                        return "$imageAppendUrl${e.posterPath}";
                      }).toList();
                      final _southIndianid = state.southIndianCinema.map((e) {
                        return e.id;
                      }).toList();

                      if (_top10.isEmpty) {
                        return const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Color.fromARGB(255, 104, 24, 18),
                          ),
                        );
                      }

                      final mainBgImage = _top10[0];
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Color.fromARGB(255, 104, 24, 18),
                          ),
                        );
                      } else if (state.hasError) {
                        return const Center(
                          child: Text(
                            "Has Error",
                          ),
                        );
                      }

                      return ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MovieScreen(
                                      id: state.top10List[0].id.toString(),
                                    ),
                                  ),
                                );
                              },
                              child: MainBackgroundCard(
                                imageUrl: mainBgImage,
                              ),
                            ),
                          ),
                          MainCardTile(
                            title: 'Released in the past year',
                            posterList: _releasedPastYear,
                            id: _releasedPastYearid,
                          ),
                          MainCardTile(
                            title: 'Trending Now',
                            posterList: _trendingNow,
                            id: _trendingNowid,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: NumberCardTile(
                              id: _top10id.sublist(0, 10),
                              title: 'Top 10 Hits In India Today',
                              imageUrl: _top10.sublist(0, 10),
                            ),
                          ),
                          MainCardTile(
                            title: 'Tense Dramas',
                            posterList: _tenseDramas,
                            id: _tenseDramasid,
                          ),
                          MainCardTile(
                            title: 'South Indian Cinema',
                            posterList: _southIndian,
                            id: _southIndianid,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 80,
                        color: Colors.black.withOpacity(.2),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Image(
                                    image: AssetImage(kNetflixImage),
                                    height: 40,
                                    width: 50,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    size: 30,
                                  ),
                                  kwidth3,
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ProfileScreen(),
                                        ),
                                      );
                                    },
                                    child: const SizedBox(
                                      child: SizedBox(
                                        width: 30,
                                        height: 30,
                                        child: Image(
                                          image: NetworkImage(profile),
                                        ),
                                      ),
                                    ),
                                  ),
                                  kwidth,
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'TV Shows',
                                      style: kMaincard3Btn,
                                    ),
                                    Text(
                                      'Movies',
                                      style: kMaincard3Btn,
                                    ),
                                    Text(
                                      'Categories',
                                      style: kMaincard3Btn,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    : kheight,
              ],
            ),
          ),
        );
      },
    ));
  }
}
