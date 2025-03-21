import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../text_theme.dart';

class CustomDialogs {
  var textTheme = AppTextTheme.getTextTheme();
  Future<void> showConfirmationDialog(
    BuildContext context, {
    String content = "",
    VoidCallback? onConfirm,
  }) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Konfirmasi',
            style: textTheme.bodyMedium,
          ),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss dialog
              },
              child: Text(
                'Batal',
                style: textTheme.bodySmall,
              ),
            ),
            TextButton(
              onPressed: onConfirm,
              child: Text(
                'Lanjutkan',
                style: textTheme.bodySmall!.copyWith(
                  color: Colors.green,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Information'),
          content: const Text('Your download is complete.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void showErrorDialog(
    BuildContext context, {
    String title = "Terjadi Kesalahan",
    String content = "Mohon Coba Kembali!",
  }) {
    showDialog(
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void showWarningDialog(
    BuildContext context, {
    String title = "",
    String content = "",
    String confirmationText = "Simpan",
    String cancelText = "Batalkan",
    Color confirmationColor = Colors.black,
    Color cancelColor = Colors.black,
    required Function() onConfirm,
    required Function() onCancel,
  }) {
    showDialog(
      context: context,
      barrierDismissible: true,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: onCancel,
              child: Text(
                cancelText,
                style: TextStyle(color: cancelColor),
              ),
            ),
            TextButton(
              onPressed: onConfirm,
              child: Text(
                confirmationText,
                style: TextStyle(color: confirmationColor),
              ),
            ),
          ],
        );
      },
    );
  }

  static void showWidgetDialog(
    BuildContext context, {
    String title = "",
    String confirmationText = "Simpan",
    String cancelText = "Batalkan",
    Color confirmationColor = Colors.black,
    Color cancelColor = Colors.black,
    required Function() onConfirm,
    required Function() onCancel,
    required Widget widget,
  }) {
    showDialog(
      context: context,
      barrierDismissible: true,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: widget,
          actions: <Widget>[
            TextButton(
              onPressed: onCancel,
              child: Text(
                cancelText,
                style: TextStyle(color: cancelColor),
              ),
            ),
            TextButton(
              onPressed: onConfirm,
              child: Text(
                confirmationText,
                style: TextStyle(color: confirmationColor),
              ),
            ),
          ],
        );
      },
    );
  }

  static void showFreeWidgetDialog(
    BuildContext context, {
    String title = "",
    String content = "",
    Color confirmationColor = Colors.black,
    Color cancelColor = Colors.black,
    required VoidCallback onConfirm,
    VoidCallback? onCancel,
    String cancelText = "Batalkan",
    String confirmText = "Lanjutkan",
    required Widget widget,
    bool isDismissible = true,
  }) {
    showDialog(
      context: context,
      barrierDismissible: isDismissible,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: widget,
          actions: <Widget>[
            TextButton(
              onPressed: onCancel ??
                  () {
                    Get.back();
                  },
              child: Text(
                cancelText,
                style: TextStyle(color: cancelColor),
              ),
            ),
            TextButton(
              onPressed: onConfirm,
              child: Text(
                confirmText,
                style: TextStyle(color: confirmationColor),
              ),
            ),
          ],
        );
      },
    );
  }

  static void showSuccessDialog(
    BuildContext context, {
    String title = "Berhasil",
    String content = "",
  }) {
    showDialog(
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  static void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent user from dismissing the dialog
      useRootNavigator: false,
      builder: (BuildContext context) {
        return const Dialog(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                CircularProgressIndicator(),
                SizedBox(width: 20),
                Text('Loading...'),
              ],
            ),
          ),
        );
      },
    );
  }

  void showInputDialog(BuildContext context) {
    TextEditingController textController = TextEditingController();

    showDialog(
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Enter Your Name'),
          content: TextField(
            controller: textController,
            decoration: const InputDecoration(hintText: 'Name'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // String userName = textController.text;
                // Handle the user input
                Navigator.of(context).pop();
              },
              child: const Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  void showChoiceDialog(BuildContext context) {
    showDialog(
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose an Option'),
          content: const Text('Select a payment method:'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Handle payment method 1
                Navigator.of(context).pop();
              },
              child: const Text('Credit Card'),
            ),
            TextButton(
              onPressed: () {
                // Handle payment method 2
                Navigator.of(context).pop();
              },
              child: const Text('PayPal'),
            ),
          ],
        );
      },
    );
  }
}
