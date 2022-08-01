// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  int id;
  String title;
  String backdropPath;
  List<int> genreIds;
  String overview;
  double voteAverage;
  String releaseDate;

  Movie({
    required this.id,
    required this.title,
    required this.backdropPath, 
    required this.genreIds,
    required this.overview , 
    required this.voteAverage ,
    required this.releaseDate ,
  });
  
  @override
  
  List<Object?> get props =>[id ,title ,backdropPath , genreIds ,overview ,voteAverage ,releaseDate];
}
