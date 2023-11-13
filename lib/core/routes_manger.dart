

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hotels/core/strings_manger.dart';

import '../presentation/home/view/HomeScreenView.dart';






class Routes{
  static const String splashRoute= "/";
  static const String loginRoute= "/";
  static const String registerRoute= "/";
  static const String forgetPasswordRoute= "/";
  static const String onBoardingRoute= "/";
  static const String homeRoute= "/";
  static const String categoryRoute= "/";
  static const String cartRoute= "/";
  static const String favouriteRoute= "/";
  static const String detailsRoute= "/";
  static const String profileRoute= "/";
}
class RoutesGenerator{
  static Route<dynamic>getRoute(RouteSettings settings){
    switch(settings.name){


      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_)=>HomeScreenView());
      case Routes.categoryRoute:
      default:
        return unDefinedRoute();

    }

  }
  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(
        title:const Text(AppString.noRouteFound),
      ),
      body: const Center(child: Text(AppString.noRouteFound)),
    ));
  }


}