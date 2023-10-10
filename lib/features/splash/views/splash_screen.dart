import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zi_app/core/navigator.dart';
import 'package:zi_app/features/dashboard/view/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int value = 0;
  bool isComp = true;
  Timer? timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      if (value == 10) {
        isComp = false;
        // increment();
      } else if (value == 0) {
        isComp = true;
        // decrement();
      }

      setState(() {
        if (isComp) {
          increment();
        } else {
          decrement();
        }
      });
    });
  }

  void increment() {
    setState(() {
      value++;
    });
  }

  void decrement() {
    setState(() {
      value--;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Spalsh'),
            const Spacer(),
            GestureDetector(
              onTap: () {
                print('Welcome to Flutter class');
              },
              child: const Icon(
                Icons.person,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                print('Welcome to Flutter class');
              },
              child: const Icon(
                Icons.notifications_outlined,
              ),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  '$value',
                  style: GoogleFonts.poppins(
                    color: Colors.blueAccent,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: const Text('increment'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    value == 0 ? null : decrement();
                  },
                  child: const Text('decrement'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => DashboardScreen(),
                    //   ),
                    // );
                    AppNavigator.to(context, const DashboardScreen());
                  },
                  child: const Text('Next'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
