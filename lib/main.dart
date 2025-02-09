import 'package:flutter/material.dart';
import 'views/books_view.dart';
import 'views/wishlist_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookstore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bookstore'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.book), text: "Books"),
              Tab(icon: Icon(Icons.favorite), text: "Wishlist"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            BooksView(),
            WishlistView(),
          ],
        ),
      ),
    );
  }
}
