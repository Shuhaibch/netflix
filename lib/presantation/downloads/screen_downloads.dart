// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants/constants.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/presantation/widgets/app_bar_widgets.dart';

import '../../application/downloads/downloads_bloc.dart';
import '../movie/screen_movie.dart';

class ScreenDownlods extends StatelessWidget {
  ScreenDownlods({super.key});
  final _widgetList = [
    const _SmartDownloads(),
    const Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.fromLTRB(13, 25, 13, 10),
          itemBuilder: (ctx, index) => _widgetList[index],
          separatorBuilder: (ctx, index) => const SizedBox(
            height: 30,
          ),
          itemCount: _widgetList.length,
        ));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kwidth,
        Text(
          'Smart Downloads',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });

    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text(
          'Indroducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: GoogleFonts.rubik().fontFamily,
            color: kWhiteColor,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Text(
            textAlign: TextAlign.center,
            "We'll Download a personalised selection of\nMovies and shows for you, so there's\nalways somthing to watch on your\ndevice.",
            style: TextStyle(
              fontFamily: GoogleFonts.rubik().fontFamily,
              color: Colors.grey[350],
              fontSize: 16,
            ),
          ),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              width: size.width,
              height: size.width - 80,
              child: state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Color.fromARGB(255, 116, 16, 9),
                      ),
                    )
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.3),
                          radius: (size.width * 0.4) - 15,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MovieScreen(
                                    id: state.downloads[4].id.toString()),
                              ),
                            );
                          },
                          child: DownloadsImageWidget(
                            size: Size(
                              size.width * 0.4,
                              size.height * 0.25,
                            ),
                            imageList:
                                '$imageAppendUrl${state.downloads[4].posterPath}',
                            margin: const EdgeInsets.only(
                              left: 130,
                              bottom: 50,
                            ),
                            angle: 20,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MovieScreen(
                                    id: state.downloads[1].id.toString()),
                              ),
                            );
                          },
                          child: DownloadsImageWidget(
                            imageList:
                                '$imageAppendUrl${state.downloads[1].posterPath}',
                            margin: const EdgeInsets.only(
                              right: 130,
                              bottom: 50,
                            ),
                            size: Size(
                              size.width * 0.4,
                              size.height * 0.25,
                            ),
                            angle: -20,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MovieScreen(
                                    id: state.downloads[2].id.toString()),
                              ),
                            );
                          },
                          child: DownloadsImageWidget(
                            imageList:
                                '$imageAppendUrl${state.downloads[2].posterPath}',
                            margin: const EdgeInsets.only(),
                            size: Size(
                              size.width * 0.4,
                              size.height * 0.30,
                            ),
                          ),
                        ),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageList,
            ),
          ),
        ),
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: MaterialButton(
              color: kButtonColorBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  'Set Up',
                  style: TextStyle(
                    fontFamily: GoogleFonts.rubik().fontFamily,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: kButtonColorWhite,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See What you can download',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: kBlackColor,
                fontFamily: GoogleFonts.rubik().fontFamily,
              ),
            ),
          ),
        )
      ],
    );
  }
}
