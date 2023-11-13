// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix_app/application/movies/movies_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/domain/movie/models/movie_respo.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.movieRespo,
  }) : super(key: key);
  final MovieRespo movieRespo;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //my list
        TextButton.icon(
          onPressed: () {
            context.read<MoviesBloc>().add(AddMyList(movieRespo: movieRespo));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text('Added'),
              duration: const Duration(seconds: 1),
              action: SnackBarAction(
                label: 'ACTION',
                onPressed: () {},
              ),
            ));
            log('message');
          },
          icon: Column(
            children: [
              const Icon(
                CupertinoIcons.add,
                color: kWhiteColor,
                size: 40,
              ),
              Text(
                'My List',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          label: const Text(
            '', //'Label',
            style: TextStyle(
              color: kWhiteColor,
            ),
          ),
        ),
        // rate
        TextButton.icon(
          onPressed: () {},
          icon: Column(
            children: [
              const Icon(
                Icons.thumb_up_off_alt,
                color: kWhiteColor,
                size: 40,
              ),
              Text(
                'Rate',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          label: const Text(
            '', //'Label',
            style: TextStyle(
              color: kWhiteColor,
            ),
          ),
        ),
        //share
        TextButton.icon(
          onPressed: () {},
          icon: Column(
            children: [
              const Icon(
                Icons.share,
                color: kWhiteColor,
                size: 40,
              ),
              Text(
                'Share',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          label: Text(
            '', //'Label',
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
        ),
      ],
    );
  }
}
