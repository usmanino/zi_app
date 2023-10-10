import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zi_app/colors/app_colors.dart';
import 'package:zi_app/reusables/custom_input.dart';
import 'package:zi_app/reusables/loading.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Login',
                style: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 140, 86, 4),
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                child: Column(
                  children: [
                    const CustomInput(
                      hintText: 'Enter name',
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomInput(
                      hintText: 'Enter email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomInput(
                      hintText: 'Enter password',
                      isPassword: true,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Next'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
