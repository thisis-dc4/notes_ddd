import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/auth/signin_form/sign_in_form_bloc.dart';
import 'package:notes_ddd/injection.dart';
import 'package:notes_ddd/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [Color(0xFF2196f3), Color(0xFFf44336)],
                // colors: [const Color(0xFFb92b27), const Color(0xFF1565c0)],
                // colors: [const Color(0xFF5433ff), const Color(0xFF20bdff), const Color(0xFFa5fecb)],
              ),
            ),
            child: const SignInForm()),
      ),
    );
  }
}
