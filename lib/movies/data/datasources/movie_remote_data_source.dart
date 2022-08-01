import 'package:dio/dio.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/network/error-message_model.dart';
import 'package:movies_app/core/utils/app_constance.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}




class MovieRemoteDataSource implements BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    var response = await Dio().get(AppConstance.nowPlayingMoviesPath);

    if (response.statusCode == 200) {
      List<dynamic> movieList = [];
      movieList = response.data['results'];

      return movieList.map((e) => MovieModel.fromJson(e)).toList();
    } else {
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }



  
  @override
  Future<List<MovieModel>> getPopularMovies() async {
        var response = await Dio().get(AppConstance.popularMoviesPath);

    if (response.statusCode == 200) {
      List<dynamic> popularList = [];
      popularList = response.data['results'];

      return popularList.map((e) => MovieModel.fromJson(e)).toList();
    } else {
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }



  
  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
      var response = await Dio().get(AppConstance.topRatedMoviesPath);

    if (response.statusCode == 200) {
      List<dynamic> topRatedList = [];
      topRatedList = response.data['results'];

      return topRatedList.map((e) => MovieModel.fromJson(e)).toList();
    } else {
      throw ServerException(ErrorMessageModel.fromJson(response.data));
    }
  }
}
