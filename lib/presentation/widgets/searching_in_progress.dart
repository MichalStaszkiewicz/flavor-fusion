import 'package:flutter/material.dart';

class Searching extends StatefulWidget {
  const Searching({
    super.key,
  });

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 30,
              ),
              Container(child: Text("Searching in progress")),
            ],
          ),
        ),
      ),
    );
  }
}
