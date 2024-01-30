import 'package:cinemapedia/config/infrastructure/models/moviedb/movie_moviedb.dart';
import 'package:cinemapedia/domain/entities/movie.dart';

class MovieMapper {
  static Movie movieDBToEntit(MovieMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: moviedb.backdropPath != ''
          ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
          : 'https://imgs.search.brave.com/s4a919tYn_L_ADCjvnbERdk4hZTT2r6FTXeZdqg9NTc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9saW5u/ZWEuY29tLmFyL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDE4LzA5/LzQwNFBvc3Rlck5v/dEZvdW5kLmpwZw',
      genreIds: moviedb.genreIds
          .map((e) => e.toString())
          .toList(), //Transformar de enteros a Strings
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: (moviedb.posterPath != '')
          ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
          : 'no-poster',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount);
}
