// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i13;
import '../../../application/fast_laugh/fastlaugh_bloc.dart' as _i14;
import '../../../application/home/home_bloc.dart' as _i15;
import '../../../application/hot_and_new/hot_and_new_bloc.dart' as _i16;
import '../../../application/movies/movies_bloc.dart' as _i17;
import '../../../application/search/search_bloc.dart' as _i18;
import '../../../infrastrucure/downloads/downloads_repository.dart' as _i6;
import '../../../infrastrucure/hot_and_new/hot_and_new_impl.dart' as _i4;
import '../../../infrastrucure/movies/movies_impl.dart' as _i8;
import '../../../infrastrucure/search/search_impl.dart' as _i10;
import '../../../infrastrucure/trending/trending_impl.dart' as _i12;
import '../../downloads/i_downloads_repo.dart' as _i5;
import '../../hot_and_new/hot_and_new_service.dart' as _i3;
import '../../movie/movie_service.dart' as _i7;
import '../../search/search_service.dart' as _i9;
import '../../trendingNow/trendingService.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.HotAndNewService>(() => _i4.HotAndNewImplimentation());
  gh.lazySingleton<_i5.IDownloadsRepo>(() => _i6.DownloadsRepository());
  gh.lazySingleton<_i7.MoviesService>(() => _i8.MoviesImpl());
  gh.lazySingleton<_i9.SearchService>(() => _i10.SearchImp());
  gh.lazySingleton<_i11.TrendingService>(() => _i12.Trendingimpl());
  gh.factory<_i13.DownloadsBloc>(
      () => _i13.DownloadsBloc(get<_i5.IDownloadsRepo>()));
  gh.factory<_i14.FastlaughBloc>(
      () => _i14.FastlaughBloc(get<_i5.IDownloadsRepo>()));
  gh.factory<_i15.HomeBloc>(() => _i15.HomeBloc(
        get<_i3.HotAndNewService>(),
        get<_i5.IDownloadsRepo>(),
        get<_i11.TrendingService>(),
      ));
  gh.factory<_i16.HotAndNewBloc>(
      () => _i16.HotAndNewBloc(get<_i3.HotAndNewService>()));
  gh.factory<_i17.MoviesBloc>(() => _i17.MoviesBloc(get<_i7.MoviesService>()));
  gh.factory<_i18.SearchBloc>(() => _i18.SearchBloc(
        get<_i5.IDownloadsRepo>(),
        get<_i9.SearchService>(),
      ));
  return get;
}
