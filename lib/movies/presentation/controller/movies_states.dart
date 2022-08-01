

abstract class MoviesStates {}

class MoviesInitialState extends MoviesStates {}

// Now Playing

class MoviesNowPlayingLoadingState extends MoviesStates {}

class MoviesNowPlayingSuccessState extends MoviesStates {}

class MoviesNowPlayingErrorState extends MoviesStates {
  String message;
  MoviesNowPlayingErrorState(this.message);
}

// get popular

class PopularMoviesLoadingState extends MoviesStates {}

class PopularMoviesSuccessState extends MoviesStates {}

class PopularMoviesErrorState extends MoviesStates {
  String message;
  PopularMoviesErrorState(this.message);
}
