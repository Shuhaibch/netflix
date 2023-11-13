// ignore_for_file: public_member_api_docs, sort_constructors_first, no_leading_underscores_for_local_identifiers, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/domain/downloads/models/downloads.dart';
import 'package:video_player/video_player.dart';
import 'package:share_plus/share_plus.dart';
import '../../../application/fast_laugh/fastlaugh_bloc.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widgets;
  final Downloads movieData;

  const VideoListItemInheritedWidget({
    Key? key,
    required this.widgets,
    required this.movieData,
  }) : super(key: key, child: widgets);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int intex;
  const VideoListItem({
    Key? key,
    required this.intex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPath;
    final videoUrl = dummyvideoUrl[intex % dummyvideoUrl.length];
    return Stack(
      children: [
        FastLaughVideoPlayer(videoUrl: videoUrl, onStateChanged: (bool) {}),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side volume
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(.5),
                    radius: 35,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off_outlined,
                        size: 30,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),

                //right sided item
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        backgroundImage: posterPath == null
                            ? null
                            : NetworkImage('$imageAppendUrl$posterPath'),
                        radius: 30,
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: likedVideosidsNotiifer,
                      builder: (BuildContext c, Set<int> newLikrdlIistId,
                          Widget? _) {
                        final _index = intex;
                        if (newLikrdlIistId.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              // BlocProvider.of<FastlaughBloc>(context)
                              //     .add(Unlikevideo(id: _index));
                              likedVideosidsNotiifer.value.remove(_index);
                              likedVideosidsNotiifer.notifyListeners();
                            },
                            child: const VideoActionWidget(
                              icon: Icons.favorite_sharp,
                              color: Color.fromARGB(255, 134, 21, 13),
                              title: 'Liked',
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: () {
                            likedVideosidsNotiifer.value.add(_index);
                            likedVideosidsNotiifer.notifyListeners();
                          },
                          child: const VideoActionWidget(
                            icon: Icons.emoji_emotions_outlined,
                            title: 'LOL',
                          ),
                        );
                      },
                    ),
                    VideoActionWidget(
                      icon: Icons.add,
                      title: "MyList",
                    ),
                    GestureDetector(
                      onTap: () {
                        final movieUrl =
                            VideoListItemInheritedWidget.of(context)
                                ?.movieData
                                .posterPath;
                        if (movieUrl != null) {
                          Share.share(movieUrl);
                        }
                      },
                      child: const VideoActionWidget(
                        icon: Icons.share,
                        title: "Share",
                      ),
                    ),
                    VideoActionWidget(
                      icon: Icons.play_arrow,
                      title: "Play",
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  const VideoActionWidget({
    Key? key,
    required this.icon,
    required this.title,
    this.color = kWhiteColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              color: kWhiteColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayer({
    super.key,
    required this.videoUrl,
    required this.onStateChanged,
  });

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.play();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 450,
        child: _videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              )
            : const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
