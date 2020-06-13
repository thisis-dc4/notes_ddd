import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:notes_ddd/application/auth/signin_form/auth_bloc_bloc.dart';
import 'package:notes_ddd/presentation/routes/router.gr.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBlocBloc, AuthBlocState>(
      listener: (context, state) {
        state.map(
          initial: (e) {},
          authenticated: (e) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.notesScreen),
          unauthenticated: (e) => ExtendedNavigator.of(context)
              .pushReplacementNamed(Routes.signInPage),
        );
      },
      child: Center(
        child: Container(
          color: Theme.of(context).canvasColor,
          child: const SpinKitPouringHourglass(
            color: Color(0xFFf44336),
          ),
        ),
      ),
    );
  }
}
