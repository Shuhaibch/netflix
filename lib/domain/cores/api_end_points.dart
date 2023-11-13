import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/infrastrucure/api_key.dart';

class ApiEndPoints {
  static const downloads = '$kBaseUrl/movie/popular?api_key=$apiKey';

  static const search = '$kBaseUrl/search/movie?api_key=$apiKey';
  static const trending = '$kBaseUrl/trending/movie/day?api_key=$apiKey';
  static const hotAndNewMovies = '$kBaseUrl/discover/movie?api_key=$apiKey';
  static const hotAndNewTv = '$kBaseUrl/discover/tv?api_key=$apiKey';
  static const movies = '$kBaseUrl/movie/';
  static const movies2 = '?api_key=$apiKey';
}
