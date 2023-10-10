// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zi_app/colors/app_colors.dart';

// Project imports:

class Loading extends StatelessWidget {
  const Loading({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: defaultTargetPlatform == TargetPlatform.android
            ? const CircularProgressIndicator(
                color: AppColors.primary,
                strokeWidth: 2,
              )
            : CupertinoActivityIndicator(
                color: color,
              ),
      ),
    );
  }
}
