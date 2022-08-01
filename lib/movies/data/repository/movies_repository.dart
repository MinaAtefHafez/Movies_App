import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/data/datasources/movie_remote_data_source.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class MoviesRepository implements BaseMoviesRepository {
  BaseMovieRemoteDataSource baseRemoteDataSource;
  MoviesRepository(
    this.baseRemoteDataSource ,
  );


  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async { 
    var result = await baseRemoteDataSource.getNowPlayingMovies();

    try {
      return Right(result); 
    } on ServerException catch (exception) {
      return Left(ServerFailure(exception.errorMessageModel.statusMessage));
    }
  }



  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    var result = await baseRemoteDataSource.getPopularMovies();

    try {
      return Right(result);
    } on ServerException catch (exception) {
      return Left(ServerFailure(exception.errorMessageModel.statusMessage));
    }
  }




  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    var result = await baseRemoteDataSource.getTopRatedMovies();

    try {
      return Right(result);
    } on ServerException catch (exception) {
      return Left(ServerFailure(exception.errorMessageModel.statusMessage));
    }
  }
  
  
}
