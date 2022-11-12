import 'package:flutter/material.dart';
import 'package:movie_seeker/widgets/movieList/movie_list_widget.dart';
import 'package:movie_seeker/widgets/newsList/news_list_widget.dart';
import 'package:movie_seeker/widgets/tvShowList/tv_show_list_widget.dart';

const List<Widget> tabsOptions = <Widget>[
  NewsListWidget(),
  MovieListWidget(),
  TvShowListWidget()
];