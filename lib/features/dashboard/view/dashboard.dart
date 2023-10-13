import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zi_app/colors/app_colors.dart';
import 'package:zi_app/core/navigator.dart';
import 'package:zi_app/features/dashboard/view/view_details.dart';
import 'package:zi_app/features/dashboard/view_model/calculator_view_model.dart';
import 'package:zi_app/features/dashboard/view_model/dashboard_view_model.dart';
import 'package:zi_app/reusables/custom_input.dart';
import 'package:zi_app/reusables/loading.dart';
import 'package:zi_app/reusables/loading_overlay_view.dart';
import 'package:zi_app/utils/Spacing.dart';
import 'package:zi_app/utils/message.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // bool _isLoading = false;
  // check() async {
  //   setState(() {
  //     _isLoading = true;
  //   });
  //   final name = nameController.text.trim();
  //   final password = passwordController.text.trim();

  //   if (name == 'Chibuzo' && password == '123456') {
  //     await Future.delayed(const Duration(seconds: 5), () {
  //       setState(() {
  //         _isLoading = false;
  //       });
  //     });
  //     Messenger.success(context, 'login successful');
  //     AppNavigator.to(
  //       context,
  //       ViewDetails(
  //         name: nameController.text.trim(),
  //         email: emailController.text.trim(),
  //         password: passwordController.text.trim(),
  //       ),
  //     );
  //   } else {
  //     await Future.delayed(const Duration(seconds: 5), () {
  //       setState(() {
  //         _isLoading = false;
  //       });
  //     });
  //     Messenger.error(context, 'Invalid login');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<CalculatorViewModel>(context, listen: false);

    return Consumer<DashboardViewModel>(builder: (_, model, __) {
      if (model.isSuccessful == true) {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          Messenger.success(context, 'login successful');
        });
      }

      if (model.isSuccessful == false) {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          Messenger.error(context, 'login fail');
        });
      }
      return LoadingOverlayView(
        message: 'Loading',
        showOverLay: model.isLoading,
        child: Scaffold(
          appBar: AppBar(),
          body: SafeArea(
              child: Container(
            padding: AppPadding.defaultPadding,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.ph,
                  Text(
                    'Login',
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 140, 86, 4),
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  40.ph,
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomInput(
                          hintText: 'Enter name',
                          keyboardType: TextInputType.name,
                          controller: nameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            } else if (value.length <= 3) {
                              return 'Too short';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomInput(
                          hintText: 'Enter email',
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomInput(
                          hintText: 'Enter password',
                          isPassword: true,
                          keyboardType: TextInputType.text,
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          child: const Text('Next'),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              await model.submit (
                                nameController.text.trim(),
                                passwordController.text.trim(),
                              );
                              // check();
                              //
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
      );
    });
  }
}
