import 'package:animation_practice/Bloc/Login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Constants/Strings/app_strings.dart';
import '../Ui/Page/FlightPage/flight_list_pafe.dart';
import '../Ui/Page/Home/home_page.dart';
import '../Ui/Page/Login/login_splash.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final Map? args = settings.arguments as Map?;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: LoginSplashPage(),
            ));
      case HOME_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: HomePage(),
            ));
      case FLIGHT_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: FlightListPage(),
            ));



      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: Container(),
            ));
    }
  }
}