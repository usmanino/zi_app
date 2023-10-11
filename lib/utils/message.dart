import 'package:flutter/material.dart';
import 'package:zi_app/colors/app_colors.dart';

class Messenger {
  Messenger._();

  static final Color _black = Colors.black.withOpacity(.8);

  static void success(BuildContext context, String message, {int delay = 3}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: delay),
        backgroundColor: AppColors.success,
      ),
    );
    // Flushbar(
    //   message: message,
    //   duration: Duration(seconds: delay),
    //   backgroundColor: AppColors.primary,
    // ).show(context);
  }

  static void error(BuildContext context, String message, {int delay = 3}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: delay),
        backgroundColor: _black,
      ),
    );
    // Flushbar(
    //   message: message,
    //   duration: Duration(seconds: delay),
    //   backgroundColor: _black,
    //   padding: EdgeInsets.zero,
    // ).show(context);
  }

  static void info(BuildContext context, String message, {int delay = 3}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: delay),
        backgroundColor: _black,
      ),
    );
    // Flushbar(
    //   message: message,
    //   duration: Duration(seconds: delay),
    //   backgroundColor: _black,
    // ).show(context);
  }
}
