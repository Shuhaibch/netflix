import 'package:flutter/material.dart';
import 'package:netflix_app/domain/my_list/my_list.dart';

import '../../../core/strings.dart';
import '../../movie/screen_movie.dart';
import '../../search/widget/search_result.dart';

class ScreenMyList extends StatelessWidget {
  const ScreenMyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyList().myListId.isEmpty
          ? const Center(
              child: Text("List is Empty"),
            )
          : GridView.count(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 3,
              shrinkWrap: true,
              childAspectRatio: .9 / 1.4,
              children: List.generate(
                MyList().myListId.length,
                (index) {
                  final movie = MyList().myListId[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MovieScreen(id: movie.id.toString()),
                          ));
                    },
                    child: Maincard(
                        imageUrl: '$imageAppendUrl${movie.posterPath}'),
                  );
                },
              ),
            ),
    );
  }
}
