// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:notes_ddd/presentation/splash/splash_screen.dart';
import 'package:notes_ddd/presentation/sign_in/sign_in_page.dart';
import 'package:notes_ddd/presentation/notes/notes_screen.dart';

abstract class Routes {
  static const splashScreen = '/';
  static const signInPage = '/sign-in-page';
  static const notesScreen = '/notes-screen';
  static const all = {
    splashScreen,
    signInPage,
    notesScreen,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashScreen(),
          settings: settings,
        );
      case Routes.signInPage:
        if (hasInvalidArgs<SignInPageArguments>(args)) {
          return misTypedArgsRoute<SignInPageArguments>(args);
        }
        final typedArgs = args as SignInPageArguments ?? SignInPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.notesScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => NotesScreen(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//SignInPage arguments holder class
class SignInPageArguments {
  final Key key;
  SignInPageArguments({this.key});
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashScreen() => pushNamed(Routes.splashScreen);

  Future pushSignInPage({
    Key key,
  }) =>
      pushNamed(
        Routes.signInPage,
        arguments: SignInPageArguments(key: key),
      );

  Future pushNotesScreen() => pushNamed(Routes.notesScreen);
}
