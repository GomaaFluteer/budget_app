import 'package:budget_app/common_widget/creat_nav_bar.dart';
import 'package:budget_app/main_screens/home_screen.dart';
import 'package:budget_app/utilities/providers.dart';
import 'package:budget_app/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp()); // run app
} // void main

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
        initialRoute: HomeScreen.route,
      ),
    );
  }
}