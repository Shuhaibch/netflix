import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/application/fast_laugh/fastlaugh_bloc.dart';
import 'package:netflix_app/application/home/home_bloc.dart';
import 'package:netflix_app/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix_app/application/movies/movies_bloc.dart';
import 'package:netflix_app/application/search/search_bloc.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/domain/cores/di/injectable.dart';
// import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presantation/splashScreen/splashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configerInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<FastlaughBloc>()),
        BlocProvider(create: (context) => getIt<HotAndNewBloc>()),
        BlocProvider(create: (context) => getIt<HomeBloc>()),
        BlocProvider(create: (context) => getIt<MoviesBloc>()),
      ],
      child: MaterialApp(
        title: 'NetFlix',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          navigationBarTheme:
              const NavigationBarThemeData(backgroundColor: Colors.transparent),
          colorScheme: const ColorScheme.dark(),
          scaffoldBackgroundColor: backgroundColor,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          primaryColor: const Color.fromARGB(255, 114, 24, 17),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ),
        home: const ScreenSplash(),
      ),
    );
  }
}
