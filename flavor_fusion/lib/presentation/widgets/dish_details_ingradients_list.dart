import 'package:flutter/material.dart';

class DishDetailsIngradientsList extends StatefulWidget {
  const DishDetailsIngradientsList({super.key});

  @override
  State<DishDetailsIngradientsList> createState() =>
      _DishDetailsIngradientsListState();
}

class _DishDetailsIngradientsListState
    extends State<DishDetailsIngradientsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) => Container(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnA6_QdN2-Y6zVVxPP53OmlMFmF5VQoAYyayxAPjg57A&s')),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Container(
                          child: const Center(
                            child:
                                Text(textAlign: TextAlign.start, 'Chocholate'),
                          ),
                        )),
                    const Expanded(
                        child: Text(textAlign: TextAlign.end, '160 g')),
                  ],
                ),
              )),
    );
  }
}
