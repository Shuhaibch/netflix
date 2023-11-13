// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/presantation/new&hot/widget/coming_soon_widget.dart';
import 'package:intl/intl.dart';
import 'package:netflix_app/presantation/new&hot/widget/everyons_wacthing_widgets.dart';
import 'package:netflix_app/presantation/new&hot/widget/hot_and_new_appbar.dart';

import '../../application/hot_and_new/hot_and_new_bloc.dart';
import '../../core/strings.dart';

class Screennewhot extends StatelessWidget {
  const Screennewhot({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: HotAndNewAppBar(),
        ),
        body: TabBarView(
          children: [
            ComingSoonList(key: Key('coming_soon')),
            EveryonesWatching()
          ],
        ),
      ),
    );
  }

//   Widget _buildComingSoon(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 15),
//       child: ListView.builder(
//         itemCount: 10,
//         itemBuilder: (context, index) => ComingSoonWidget(),
//       ),
//     );
//   }

//   Widget _buildEveryonsWatching() {
//     return ListView.builder(
//       itemCount: 10,
//       itemBuilder: (BuildContext context, index) => const SizedBox(),
//     );
//   }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDatainComingSoon());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const LoadDatainComingSoon());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Color.fromARGB(255, 99, 20, 14),
              ),
            );
          } else if (state.hasError) {
            return const Center(
              child: Text('Error while loading Coming soon'),
            );
          } else if (state.comingSoonList.isEmpty) {
            return const Center(
              child: Text('Comingsoon List is empty'),
            );
          } else {
            return ListView.builder(
              itemCount: state.comingSoonList.length,
              itemBuilder: (context, index) {
                final movie = state.comingSoonList[index];
                if (movie.id == null) {
                  const SizedBox();
                }
                // print(movie.releaseDate);
                String month = '';
                String date = '';
                try {
                  final _date = DateTime.parse(movie.releaseDate!);
                  final formatedDate = DateFormat.yMMMMd('en_US').format(_date);
                  month = formatedDate.split(' ').first.substring(0, 3);
                  date = movie.releaseDate!.split('-')[1];
                } catch (_) {
                  month = '';
                  date = '';
                }
                return Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: ComingSoonWidget(
                      id: movie.id.toString(),
                      day: date,
                      month: month,
                      posterPath: "$imageAppendUrl${movie.backdropPath}",
                      movieName: movie.originalTitle ?? 'No Title',
                      description: movie.overview ?? 'No description'),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class EveryonesWatching extends StatelessWidget {
  const EveryonesWatching({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const LoadDatainEveryonesWatching());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const LoadDatainEveryonesWatching());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 126, 29, 22),
                strokeWidth: 2,
              ),
            );
          } else if (state.hasError) {
            return const Center(
              child: Text('Error while loading Coming soon'),
            );
          } else if (state.everyOnesWatchingList.isEmpty) {
            return const Center(
              child: Text('Comingsoon List is empty'),
            );
          } else {
            return ListView.builder(
                itemCount: state.everyOnesWatchingList.length,
                itemBuilder: (context, index) {
                  final movie = state.everyOnesWatchingList[index];
                  if (movie.id == null) {
                    const SizedBox();
                  }
                  // print(movie.releaseDate);

                  final tv = state.everyOnesWatchingList[index];
                  return EveryonsWacthingWidget(
                      posterPath: '$imageAppendUrl${tv.backdropPath}',
                      movieName: tv.originalName ?? 'no Name',
                      description: tv.overview ?? "NO description");
                });
          }
        },
      ),
    );
  }
}
