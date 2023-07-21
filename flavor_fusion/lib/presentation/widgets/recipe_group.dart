import 'package:flutter/material.dart';

class RecipeGroup extends StatelessWidget {
  const RecipeGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 20,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
                textAlign: TextAlign.left,
                'Diet',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(20),
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 0),
                        ),
                      ]),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Icon(Icons.food_bank),
                        ),
                        Text(
                          "Vegetarian",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(letterSpacing: 0.1),
                        )
                      ],
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
