import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zi_app/features/dashboard/view_model/calculator_view_model.dart';
import 'package:zi_app/features/dashboard/view_model/dashboard_view_model.dart';
import 'package:zi_app/features/splash/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CalculatorViewModel>(
          create: (_) => CalculatorViewModel(),
        ),
        ChangeNotifierProvider<DashboardViewModel>(
          create: (_) => DashboardViewModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
