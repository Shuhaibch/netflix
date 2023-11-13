import 'package:json_annotation/json_annotation.dart';

part 'movie_respo.g.dart';

@JsonSerializable()
class MovieRespo {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'budget')
  int? budget;

  @JsonKey(name: 'genres')
  List<Genre> genres;

  @JsonKey(name: 'homepage')
  String? homepage;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'imdb_id')
  String? imdbId;

  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'popularity')
  double? popularity;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'production_companies')
  List<ProductionCompany> productionCompanies;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  @JsonKey(name: 'revenue')
  int? revenue;

  @JsonKey(name: 'runtime')
  int? runtime;

  @JsonKey(name: 'status')
  String? status;

  @JsonKey(name: 'tagline')
  String? tagline;

  @JsonKey(name: 'title')
  String? title;

  @JsonKey(name: 'vote_average')
  double? voteAverage;

  @JsonKey(name: 'vote_count')
  int? voteCount;

  MovieRespo({
    this.backdropPath,
    this.budget,
    this.genres = const [],
    this.homepage,
    this.id,
    this.imdbId,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies = const [],
    this.releaseDate,
    this.revenue,
    this.runtime,
    this.status,
    this.tagline,
    this.title,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieRespo.fromJson(Map<String, dynamic> json) {
    return _$MovieRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovieRespoToJson(this);
}

@JsonSerializable()
class Genre {
  int? id;
  String? name;

  Genre({this.id, this.name});

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}

@JsonSerializable()
class ProductionCompany {
  int? id;
  @JsonKey(name: 'logo_path')
  String? logoPath;
  String? name;
  @JsonKey(name: 'origin_country')
  String? originCountry;

  ProductionCompany({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  factory ProductionCompany.fromJson(Map<String, dynamic> json) {
    return _$ProductionCompanyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductionCompanyToJson(this);
}
