import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/screens/dish_details_screen.dart';
import 'package:flavor_fusion/utility/app_router.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';

class DishItemWidget extends StatelessWidget {
  DishItemWidget(
      {required this.name, required this.time, required this.calories});
  String name;
  String time;
  String calories;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<AppRouter>().push(DishDetailsRoute(name: name));
      },
      child: Card(
        margin: EdgeInsets.all(10),
        child: Container(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 0),
                      ),
                    ]),
                child: const Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5)),
                    child: Image(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJeXICUEc1u7Ww1Kea9KHar8XhvOKZUdlZGQ4MB9HfCQ&s')),
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(
                          name,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                    _buildRecipeBasicInformations(
                        context, "$time minutes", Icons.timer),
                    _buildRecipeBasicInformations(
                        context, "$calories kcal", Icons.fire_hydrant),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Expanded _buildRecipeBasicInformations(
      BuildContext context, label, IconData icon) {
    return Expanded(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
                    alignment: Alignment.centerRight, child: Icon(icon))),
            Expanded(
              flex: 2,
              child: Text(
                label,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
