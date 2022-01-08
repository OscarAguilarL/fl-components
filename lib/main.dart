import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const ListView2Screen(),
      initialRoute: AppRoutes.intialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGeneratedRoute,
      theme: ThemeData.light().copyWith(
        // Color primario
        primaryColor: Colors.indigo,
        appBarTheme: const AppBarTheme(
          color: Colors.red,
          elevation: 0,
        ),
      ),
    );
  }
}
