import 'package:flutter/material.dart';

class BooksView extends StatelessWidget {
  const BooksView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> books = [
      {
        "title": "EYRE",
        "author": "Charlote Bronte",
        "price": "Rs.1250",
        "image": "assets/img/1.jpg"
      },
      {
        "title": "Gone with the Wind",
        "author": "Modernista",
        "price": "Rs.1500",
        "image": "assets/img/mar.jpg"
      },
      {
        "title": "The Tragedy of Romeo and Juliet",
        "author": "William Shakespeare",
        "price": "Rs.800",
        "image": "assets/img/shak.jpg"
      }
    ];

    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        var book = books[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title and Author at the Top
                Text(
                  book["title"]!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  book["author"]!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 10),
                // Book Image
                Image.asset(
                  book["image"]!,
                  width: double.infinity,
                  height: 350,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                // Price (Left) and Add to Cart (Right)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      book["price"]!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add to Cart functionality
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Add to Cart"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
