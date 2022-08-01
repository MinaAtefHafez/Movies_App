class AppConstance {

    static const String baseUrl = 'https://api.themoviedb.org/3' ;
    static const String appKey = '942f47ab1e41bb5b21a608fe29271f0f';


    static const String nowPlayingMoviesPath = '$baseUrl/movie/now_playing?api_key=$appKey';
    static const String popularMoviesPath = '$baseUrl/movie/popular?api_key=$appKey';
    static const String topRatedMoviesPath = '$baseUrl/movie/top_rated?api_key=$appKey';


    static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500' ;

    static String imageUrl (String path) =>  '$baseImageUrl$path' ;
}