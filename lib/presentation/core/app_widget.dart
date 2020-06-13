import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/signin_form/auth_bloc_bloc.dart';
import 'package:notes_ddd/injection.dart';
import 'package:notes_ddd/presentation/routes/router.gr.dart';
import 'package:notes_ddd/presentation/sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBlocBloc>()
            ..add(
              const AuthBlocEvent.authCheckRequested(),
            ),
        ),

      ],
      child: MaterialApp(
        title: 'Notes',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: const Color(0xFFFEF9EB),
          backgroundColor: Colors.white,
          accentColorBrightness: Brightness.light,
          buttonTheme: ButtonTheme.of(context).copyWith(
            buttonColor: const Color(0xFFf44336),
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            fillColor: Theme.of(context).primaryColor,
          ),
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            bodyText2: TextStyle(
              color: Colors.orange,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData(
          backgroundColor: Colors.black,
          accentColor: const Color(0xFFb0003a),
          accentColorBrightness: Brightness.dark,
          buttonTheme: ButtonTheme.of(context).copyWith(
            buttonColor: const Color(0xFFf44336),
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            fillColor: Theme.of(context).primaryColor,
          ),
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            bodyText2: TextStyle(
              color: Colors.orange,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: const Scaffold(
          body: SignInPage(),
        ),
        builder: ExtendedNavigator(router: Router()),
      ),
    );
  }
}
