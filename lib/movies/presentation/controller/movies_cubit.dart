import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/presentation/controller/movies_states.dart';

class MoviesCubit extends Cubit<MoviesStates> {
  MoviesCubit(this.getNowPlayingUseCase , this.getPopularMoviesUseCase) : super(MoviesInitialState());

  static MoviesCubit get(context) => BlocProvider.of(context);

  List <dynamic> movieNowPlayingList = [] ; 
  List <dynamic> moviesPopularList = [] ;
  GetNowPlayingUseCase getNowPlayingUseCase ;
  GetPopularMoviesUseCase getPopularMoviesUseCase ;


  void getPlayingNowMovies() async {
  
    emit(MoviesNowPlayingLoadingState());

  
     var result = await getNowPlayingUseCase.execute();
     
    result.fold((l) {
      emit(MoviesNowPlayingErrorState(l.message));
    }, (r) {
      movieNowPlayingList = r ;
      emit(MoviesNowPlayingSuccessState());
    });
  }

   

   void getPopularMovies() async {
  
    emit(PopularMoviesLoadingState());

  
     var result = await getPopularMoviesUseCase.execute();
     
    result.fold((l) {
      emit(PopularMoviesErrorState(l.message));
    }, (r) {
      moviesPopularList = r ;
      emit(PopularMoviesSuccessState());
    });
  }
     




}
