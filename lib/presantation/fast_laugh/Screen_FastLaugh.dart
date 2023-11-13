import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/fast_laugh/fastlaugh_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presantation/fast_laugh/widgets/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastlaughBloc>(context)
          .add(const FastlaughEvent.initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastlaughBloc, FastlaughState>(
            builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 136, 30, 22),
                strokeWidth: 2,
              ),
            );
          } else if (state.isError) {
            const Center(
                child: Text(
              'Error occured',
              style: TextStyle(color: kWhiteColor),
            ));
          } else if (state.videoList.isEmpty) {
            return const Center(
              child: Text('Media is Empty'),
            );
          } else if (state.videoList.isNotEmpty) {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                state.videoList.length,
                (index) {
                  return VideoListItemInheritedWidget(
                    movieData: state.videoList[index],
                    widgets: VideoListItem(
                      intex: index,
                      key: Key(
                        index.toString(),
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return const Text('data');
          }
          return const SizedBox();
        }),
      ),
    );
  }
}
