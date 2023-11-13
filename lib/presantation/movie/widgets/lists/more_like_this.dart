import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/home/home_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/core/strings.dart';

import '../../screen_movie.dart';

class MoreLikeListWidgets extends StatelessWidget {
  const MoreLikeListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight2,
        Expanded(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 116, 12, 4),
                  ),
                );
              } else if (state.hasError) {
                return const Center(
                  child: Text('Error While getting data'),
                );
              } else if (state.top10List.isEmpty) {
                return const Center(
                  child: Text('List empty'),
                );
              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final movie = state.top10List[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MovieScreen(id: movie.id.toString()),
                          ));
                    },
                    child: TopSearchItemTile(
                        title: movie.title ?? 'No Title provided',
                        imageUrl: '$imageAppendUrl${movie.backdropPath}' ''),
                  );
                },
                separatorBuilder: (context, index) => kheight3,
                itemCount: state.top10List.length,
              );
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imageUrl;

  const TopSearchItemTile(
      {super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.3 + 30,
          height: 75,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        kwidth,
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: kWhiteColor,
            ),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          size: 55,
        )
      ],
    );
  }
}
