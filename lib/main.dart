import 'package:flutter/material.dart';

import 'Constants/Colors/app_colors.dart';
import 'Route/app_route.dart';


void main() {
  runApp( MyApp(router: AppRouter(),));
}

class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({Key? key, required this.router}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Axs',
      theme: ThemeData(
          fontFamily: 'Lato',
          // primarySwatch:Colors.blue,
          primaryColor: kPrimaryColorx),
      onGenerateRoute: router.generateRoute,
    );
  }
}

