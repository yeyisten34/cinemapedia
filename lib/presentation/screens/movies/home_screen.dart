import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottonNavigation(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();

    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final nowPLayingMovies = ref.watch(nowPlayingMoviesProvider);
    final slideShowMovies = ref.watch(moviesSlideShowProvider);
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppbar(),
          MoviesSlideshow(movies: slideShowMovies),
          MovieHorizontalListview(
              movies: nowPLayingMovies,
              title: 'En Cines',
              subTitle: 'Lunes 20',
              loadNextPage: () {
                ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
              }),
          MovieHorizontalListview(
              movies: nowPLayingMovies,
              title: 'Proximamente',
              subTitle: 'En este mes',
              loadNextPage: () {
                ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
              }),
          MovieHorizontalListview(
              movies: nowPLayingMovies,
              title: 'Populares',
              subTitle: 'En este mes',
              loadNextPage: () {
                ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
              }),
          MovieHorizontalListview(
              movies: nowPLayingMovies,
              title: 'Mejor calificadas',
              subTitle: 'Desde siempre',
              loadNextPage: () {
                ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
              }),
          const SizedBox(
            height: 50,
          )

          /*Expanded(
            //El expanded lo que hace es que dentro del padre se expanda todo lo posible
            child: ListView.builder(
              itemCount: nowPlayingMovies.length,
              itemBuilder: (context, index) {
                final movie = nowPlayingMovies[index];
    
                return ListTile(title: Text(movie.title));
              },
            ),
          )*/
        ],
      ),
    );
  }
}
