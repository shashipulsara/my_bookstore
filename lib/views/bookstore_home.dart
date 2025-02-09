import 'package:flutter/material.dart';
import 'books_view.dart';
import 'wishlist_view.dart';

class BookstoreHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bookstore'),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Books"),
              Tab(text: "Wishlist"),
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
