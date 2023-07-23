import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';

import '../presentation/widgets/dialog_button.dart';

class DialogManager {
  static void confirmDialog(String header, String message, BuildContext context,
      VoidCallback onTapCancel, VoidCallback onTapConfirm) {
    showGeneralDialog(
        context: context,
        transitionDuration: const Duration(milliseconds: 300),
        pageBuilder: ((context, animation, secondaryAnimation) => Center(
              child: Container(
                height: 300,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 0),
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        textAlign: TextAlign.center,
                        header,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        textAlign: TextAlign.center,
                        message,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BouncingWidgetInOut(
                          onPressed: onTapCancel,
                          child: DialogButton(
                            backgroundColor: Colors.white,
                            borderColor: Colors.blueAccent,
                            label: 'No',
                            textColor: Colors.blueAccent,
                          ),
                        ),
                        BouncingWidgetInOut(
                          onPressed: onTapConfirm,
                          child: DialogButton(
                            backgroundColor: Colors.blueAccent,
                            borderColor: Colors.transparent,
                            label: 'Yes',
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }

  static void infoDialog(
    String header,
    String message,
    BuildContext context,
  ) {
    PanaraInfoDialog.showAnimatedShrink(
      context,
      title: header,
      message: message,
      panaraDialogType: PanaraDialogType.normal,
      barrierDismissible: false,
      buttonText: 'Ok',
      onTapDismiss: () {
        context.router.pop();
      },
    );
  }
}
