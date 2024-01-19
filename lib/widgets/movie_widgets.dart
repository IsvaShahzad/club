// movie_widgets.dart

import 'package:flutter/material.dart';

class DiscoverGridView extends StatelessWidget {
  final List<String> discoverImageUrls;

  DiscoverGridView(this.discoverImageUrls);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 355,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) => Card(
          child: Image.network(
            discoverImageUrls[index],
            fit: BoxFit.cover,
          ),
        ),
        itemCount: discoverImageUrls.length,
      ),
    );
  }
}

class TonightGridView extends StatelessWidget {
  final List<String> tonightImageUrls;

  TonightGridView(this.tonightImageUrls);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160, // Adjust the height as needed
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => Card(
          child: Image.network(
            tonightImageUrls[index],
            fit: BoxFit.cover,
          ),
        ),
        itemCount: tonightImageUrls.length,
      ),
    );
  }
}

class MovieGridView extends StatelessWidget {
  final List<String> movieImageUrls;

  MovieGridView(this.movieImageUrls);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemBuilder: (context, index) => Card(
        child: Image.network(
          movieImageUrls[index],
          fit: BoxFit.cover,
        ),
      ),
      itemCount: movieImageUrls.length,
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.grey, // Change the color of selected items
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true, // Set to true to display selected item label
      showUnselectedLabels: true, // Set to true to display unselected item labels
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_city_outlined),
          label: 'City',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
