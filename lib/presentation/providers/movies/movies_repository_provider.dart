//La data que contiene este provider nunca va a cambiar.
import 'package:cinemapedia/config/infrastructure/datasources/moviedb_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia/config/infrastructure/repositories/movie_repository_impl.dart';

//Este repositorio es inmutable, de solo lectura
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositiryImpl(MoviedbDatasource());
});
