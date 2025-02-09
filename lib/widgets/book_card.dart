import 'package:flutter/material.dart';
import '../models/book.dart';

class BookCard extends StatelessWidget {
  final Book book;
  
  BookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(book.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(book.author, style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic)),
            const SizedBox(height: 10),
            Image.asset(book.image, width: 120, height: 180, fit: BoxFit.cover),
            const SizedBox(height: 10),
            Text(book.price, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Add to Card"),
            ),
          ],
        ),
      ),
    );
  }
}