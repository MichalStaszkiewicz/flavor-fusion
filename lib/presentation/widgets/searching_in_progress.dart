import 'package:flutter/material.dart';

class SearchingInProgress extends StatelessWidget {
  const SearchingInProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
