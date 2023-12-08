import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_details_button.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_instruction_dialog.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:tdk_bouncingwidget/tdk_bouncingwidget.dart';

import '../presentation/widgets/dialog_button.dart';

class DialogManager {
  static void confirmDialog(String header, String message, BuildContext context,
      VoidCallback onTapCancel, VoidCallback onTapConfirm) {
    PanaraConfirmDialog.showAnimatedGrow(
      context,
      title: header,
      message: message,
      confirmButtonText: "Confirm",
      cancelButtonText: "Cancel",
      onTapCancel: onTapCancel,
      onTapConfirm: onTapConfirm,
      panaraDialogType: PanaraDialogType.warning,
    );
  }

  static void showRecipeInstructions(
      List<String> instructions, BuildContext context) {
    showGeneralDialog(
        barrierDismissible: true,
        barrierLabel: 'barrier',
        context: context,
        pageBuilder: (context, _, __) =>
            RecipeInstructionDialog(instructions: instructions));
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
