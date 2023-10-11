import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zi_app/colors/app_colors.dart';
import 'package:zi_app/features/dashboard/components/details_label.dart';
import 'package:zi_app/utils/Spacing.dart';

class ViewDetails extends StatefulWidget {
  final String? name;
  final String? email;
  final String? password;

  const ViewDetails({
    super.key,
    this.name,
    this.email,
    this.password,
  });

  @override
  State<ViewDetails> createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: SafeArea(
        child: Container(
          padding: AppPadding.defaultPadding,
          child: Column(
            children: [
              DetailsLabel(
                label: 'Name',
                value:
                    widget.name != null ? widget.name.toString() : 'Anonymous',
              ),
              20.ph,
              DetailsLabel(
                label: 'Email',
                value: widget.email != null ? widget.email.toString() : '@mail',
              ),
              20.ph,
              DetailsLabel(
                label: 'Password',
                value: widget.password != null
                    ? widget.password.toString()
                    : '*****',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
