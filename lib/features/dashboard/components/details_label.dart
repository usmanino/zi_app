import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zi_app/colors/app_colors.dart';
import 'package:zi_app/utils/Spacing.dart';

class DetailsLabel extends StatelessWidget {
  final String label;
  final String value;
  const DetailsLabel({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            color: AppColors.success,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        10.pw,
        Text(
          value,
          style: GoogleFonts.poppins(
            color: AppColors.primary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
