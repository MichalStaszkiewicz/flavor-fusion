import 'package:flutter/material.dart';

class SearchingSuggestions extends StatelessWidget {
  const SearchingSuggestions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey(3),
      height: double.infinity,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              height: 30,
            ),
            Text("Searching in progress"),
          ],
        ),
      ),
    );
  }
}
