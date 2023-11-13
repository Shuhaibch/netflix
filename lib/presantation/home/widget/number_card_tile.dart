// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:netflix_app/presantation/movie/screen_movie.dart';

import '../../widgets/title_widget.dart';
import 'number_image_card.dart';

class NumberCardTile extends StatelessWidget {
  const NumberCardTile({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.id,
  }) : super(key: key);
  final String title;
  final List<String> imageUrl;
  final List id;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4, left: 5),
          child: MainTitleWidget(title: title),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MovieScreen(id: id[index].toString()),
                      ));
                },
                child: NumberImageCard(
                  index: index,
                  imageUrl: imageUrl[index],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
