import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/presantation/search/widget/title_widget.dart';

import '../../../application/search/search_bloc.dart';
import '../../../core/strings.dart';
import '../../movie/screen_movie.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight2,
        const TitleWidget(title: 'Movies & TV'),
        kheight2,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 3,
                shrinkWrap: true,
                childAspectRatio: .9 / 1.4,
                children: List.generate(
                  state.searchResultList.length,
                  (index) {
                    final movie = state.searchResultList[index];
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
              );
            },
          ),
        )
      ],
    );
  }
}

class Maincard extends StatelessWidget {
  final String imageUrl;
  const Maincard({super.key, required this.imageUrl});
  final String imgNotFound = 'lib/core/Assets/images/browser.png';
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
      ),
      placeholder: (context, url) => const SizedBox(
        height: 2.0,
        width: 2.0,
        child: Center(
            child: CircularProgressIndicator(
          color: Color.fromARGB(255, 100, 6, 6),
        )),
      ),
      errorWidget: (context, url, error) => const Icon(
        Icons.error,
        size: 50,
      ),
    );
  }
}
