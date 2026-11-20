import 'package:builiq/constant/app_routes.dart';
import 'package:builiq/common/loading_screen.dart';
import 'package:builiq/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loading,
      routes: {
        AppRoutes.loading: (context) => const LoadingScreen(),
        AppRoutes.home: (context) => const HomeScreen(),
      },
    );
  }
}
