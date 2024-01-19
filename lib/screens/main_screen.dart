
import 'package:club_app_flutter/widgets/movie_widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Home Screen',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark, // Ensure a dark theme
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  final List<String> imageUrls = [
    'https://i.pinimg.com/564x/ca/67/18/ca671841afa763bc98b84d8b7db378f0.jpg',
    'https://img.freepik.com/premium-vector/music-festival-poster-template_623303-25.jpg',
    'https://i.pinimg.com/474x/f3/c3/a2/f3c3a25e26726b50df4da207ca977b03.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKh3pW801sjTSaObO2SarkGRk0rhi1Vm3brg&usqp=CAU',
  ];

  final List<String> tonightImageUrls = [
    'https://i.pinimg.com/736x/d3/85/c8/d385c8ed5c1a2d71d7298f8693aabda2.jpg',
    'https://i.pinimg.com/originals/8d/01/bd/8d01bd9090b4880a3faf70f6d3a3e167.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ08ljfOHl2hAjcQGjievbHmrvaGkZY4EXnNQ&usqp=CAU',
    'https://i.pinimg.com/564x/ca/67/18/ca671841afa763bc98b84d8b7db378f0.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                child: Text(
                  'Discover',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            DiscoverGridView(imageUrls),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                Text(
                  'HAPPENING TONIGHT',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                  child: TextButton(
                    child: Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            TonightGridView(tonightImageUrls),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'UPCOMING THIS WEEK',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.09),
                    child: TextButton(
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            MovieGridView(imageUrls),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}