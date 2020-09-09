import 'package:flutter/cupertino.dart';

class MovieEntity {
  final String posterPath;
  final int id;
  final String backdropPath;
  final String path;
  final String title;
  final String voteAverage;
  final String releaseDate;
  final String overview;

  const MovieEntity({
    @required this.posterPath,
    @required this.id,
    @required this.backdropPath,
    @required this.path,
    @required this.title,
    @required this.voteAverage,
    @required this.releaseDate,
    this.overview,
  }) : assert(id != null, 'Movie id must not be null');

  @override
  List<Object> get props => [id, title];

  @override
  bool get stringify => true;
}
