

import 'package:flutter/material.dart';

import '../core/routes_manger.dart';
import '../core/theme_manger.dart';

class MyApp extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key); //default con structor

   /// named constructor
   MyApp._internal();
   int appstate =0;
   static final MyApp _instance =  MyApp._internal();  ///singleton or single instance
   factory MyApp() => _instance;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesGenerator.getRoute,
      initialRoute:Routes.homeRoute ,
      theme: getAppTheme(),);
  }
}
// class Test extends StatelessWidget {
//   const Test({Key? key}) : super(key: key);
// void updateState(){
//   MyApp().appstate=11;
// }
//   void getappState(){
//     print( MyApp().appstate);
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return Container();
//   }
// }


