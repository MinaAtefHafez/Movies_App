import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/datasources/movie_remote_data_source.dart';
import 'package:movies_app/movies/data/repository/movies_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/presentation/controller/movies_cubit.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    // Bloc

    


    // popular Movies UseCase

    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()) );

    // NowPlayingUseCase

    sl.registerLazySingleton(() => GetNowPlayingUseCase(sl()));

    // Repository

    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));

    // Data Source

    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
