import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/movies/movies_bloc.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/presantation/movie/widgets/buttons.dart';
import 'package:netflix_app/presantation/movie/widgets/movie_preview_widget.dart';

import '../../core/strings.dart';
import 'tab_bar.dart';
import 'widgets/middle_details_section.dart';

class MovieScreen extends StatelessWidget {
  final String id;

  const MovieScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MoviesBloc>(context).add(Initialize(id: id));
    });
    var mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Color.fromARGB(255, 99, 20, 14),
                ),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Error while loading Coming soon'),
              );
            } else if (state.movieList.isEmpty) {
              return const Center(
                child: Text('Comingsoon List is empty'),
              );
            }
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //main image background
                  MoviePreviewWidget(
                    mediaQuery: mediaQuery,
                    imagebg:
                        '$imageAppendUrl${state.movieList[0].backdropPath}',
                  ),

                  //netflix logo

                  SizedBox(
                    height: mediaQuery.size.height * .04,
                    width: mediaQuery.size.width * .18,
                    child: const Image(
                      image: NetworkImage(netflixbg),
                    ),
                  ),

                  //movie Details section
                  MiddleDetailsSection(
                    mediaQuery: mediaQuery,
                    description: state.movieList[0].overview ?? '',
                    language: state.movieList[0].originalLanguage ?? '',
                    releaseDate: state.movieList[0].releaseDate ?? '',
                    title: state.movieList[0].title ?? '',
                  ),

                  //movie buttons
                  Buttons(movieRespo: state.movieList[0]),

                  //bars

                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: TabBarList(),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
