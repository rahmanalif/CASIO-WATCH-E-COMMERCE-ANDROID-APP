import 'package:flutter/material.dart';
import 'package:okay/Models/watch.dart';

class WatchTile extends StatelessWidget {
  final Watch watch;
  final void Function()? onTap;
  const WatchTile({super.key, required this.watch, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 235, 235),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // watch pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(watch.imagePath),
          ),

          // description
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                watch.description,
                style: const TextStyle(
                  color: Color.fromARGB(255, 39, 39, 39),
                ),
                overflow: TextOverflow.ellipsis, // Truncate long text
              ),
            ),
          ),
          // price and detail
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Use Expanded to avoid overflow in the row
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                    children: [
                      // watch name
                      Text(
                        watch.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        overflow: TextOverflow.ellipsis, // Handle long names
                      ),
                      const SizedBox(height: 5),
                      // price
                      Text(
                        '\$${watch.price}',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 39, 39, 39),
                        ),
                      ),
                    ],
                  ),
                ),
                // plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
