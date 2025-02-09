import 'package:flutter/material.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> wishlist = [
      {
        "title": "EYRE",
        "author": "Charlote Bronte",
        "price": "Rs.1100",
        "image": "assets/img/eyre.jpg"
      },
      {
        "title": "Margaret Mitchell Gone with the Wind",
        "author": "Agatha Christie",
        "price": "Rs.1350",
        "image": "assets/img/mar.jpg"
      }
    ];

    return ListView.builder(
      itemCount: wishlist.length,
      itemBuilder: (context, index) {
        var book = wishlist[index];
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
                Image.asset(
                  book["image"]!,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
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
