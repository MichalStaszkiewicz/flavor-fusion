import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_details_button.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RecipeInstructionDialog extends StatefulWidget {
  RecipeInstructionDialog({required this.instructions});
  List<String> instructions;
  @override
  State<RecipeInstructionDialog> createState() =>
      _RecipeInstructionDialogState();
}

class _RecipeInstructionDialogState extends State<RecipeInstructionDialog> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: locator<Global>().deviceDimenstions.height - 430,
        width: locator<Global>().deviceDimenstions.width - 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Center(
                child: index < (widget.instructions.length )
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Text('Step',
                                textAlign: TextAlign.right,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(color: Colors.black)),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(' ${index + 1}',
                                textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(color: Colors.black)),
                          ),
                        ],
                      )
                    : Text('Enjoy your meal !',
                        textAlign: TextAlign.left,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: index < (widget.instructions.length)
                  ? Text(
                      widget.instructions[index],
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  : Container(
                      child: Stack( children: [
                        Transform.translate(
                          offset: Offset(0, -30),
                          child:
                              Lottie.asset('assets/dish_ready_animation.json'),
                        ),
                      ]),
                    ),
            )),
            index < (widget.instructions.length )
                ? Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: RecipeDetailsButton(
                            label: 'Back',
                            onTap: () {
                              setState(() {});
                              if (index > 0) {
                                index--;
                              } else {
                                context.router.pop();
                              }
                            },
                            borderColor: Colors.white,
                            backgroundColor: Colors.blueAccent),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: RecipeDetailsButton(
                            label: 'Next',
                            onTap: () {
                            setState(() {
                              
                            });
                                index++;
                              
                            },
                            borderColor: Colors.white,
                            backgroundColor: Colors.blueAccent),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  )
                : Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: RecipeDetailsButton(
                        label: 'Done',
                        onTap: () {
                          context.router.pop();
                        },
                        borderColor: Colors.white,
                        backgroundColor: Colors.blueAccent),
                  ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
