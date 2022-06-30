import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:filmes_app/features/movie/domain/entities/movie_details_entity.dart';
import 'package:filmes_app/core/utils/apis.utils.dart';

class DetailsPage extends StatelessWidget {
  final MovieDetailsEntity movie;
  const DetailsPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.title_rounded,
                    color: Colors.amber),
                    Text(
                      movie.originalTitle,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
              ),
                ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .55,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: movie.id,
                  child: CachedNetworkImage(
                    imageUrl: API.REQUEST_IMG(movie.posterPath),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                movie.overview,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 20),

              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.new_releases_outlined,
                  color: Colors.amber),
                  Text(
                    movie.releaseDate,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
