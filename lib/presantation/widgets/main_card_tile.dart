// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:netflix_app/presantation/movie/screen_movie.dart';
import 'main_image_card.dart';
import 'title_widget.dart';

class MainCardTile extends StatelessWidget {
  final String title;
  final List posterList;
  final List id;

  const MainCardTile({
    Key? key,
    required this.title,
    required this.posterList,
    required this.id,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitleWidget(title: title),
          LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                posterList.length,
                (index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MovieScreen(id: id[index].toString()),
                        ));
                  },
                  child: MainImageCard(
                    imageUrl: posterList[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
