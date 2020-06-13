import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:notes_ddd/application/auth/signin_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.resultOption.fold(
          () {},
          (a) => a.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email already in use.',
                  invalidCombination: (_) =>
                      'Invalid Email and Password Combination',
                ),
              ).show(context);
            },
            (_) {
              // TODO: Navigation
            },
          ),
        );
      },
      builder: (context, state) {
        return Center(
          child: SingleChildScrollView(
            child: Card(
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  autovalidate: state.showErrorMsg,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text(
                        '📝',
                        style: TextStyle(fontSize: 130),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        autocorrect: false,
                        decoration: const InputDecoration(
                          labelText: 'E-Mail',
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) =>
                            context.bloc<SignInFormBloc>().add(
                                  SignInFormEvent.emailChanged(value),
                                ),
                        validator: (_) => context
                            .bloc<SignInFormBloc>()
                            .state
                            .emailAddress
                            .value
                            .fold(
                              (l) => l.maybeMap(
                                orElse: () => null,
                                invalidEmail: (_) => 'Invalid Email',
                              ),
                              (_) => null,
                            ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        autocorrect: false,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) =>
                            context.bloc<SignInFormBloc>().add(
                                  SignInFormEvent.passwordChanged(value),
                                ),
                        validator: (_) => context
                            .bloc<SignInFormBloc>()
                            .state
                            .password
                            .value
                            .fold(
                              (l) => l.maybeMap(
                                orElse: () => null,
                                shortPassword: (_) => 'Short Password',
                              ),
                              (_) => null,
                            ),
                      ),
                      const SizedBox(height: 15),
                      FlatButton(
                        textColor: const Color(0xFFf44336),
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                                const SignInFormEvent.signInEmailPressed(),
                              );
                        },
                        child: const Text('Sign In'),
                      ),
                      FlatButton(
                        textColor: const Color(0xFFf44336),
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                                const SignInFormEvent.registerPressed(),
                              );
                        },
                        child: const Text('Register'),
                      ),
                      FlatButton(
                        textColor: const Color(0xFFf44336),
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                                const SignInFormEvent.signInGooglePressed(),
                              );
                        },
                        child: const Text('Sign In with Google'),
                      ),
                      if (state.isLoading) ...[
                        const Center(
                          child: SpinKitPouringHourglass(color: Color(0xFFf44336)),
                        )
                      ]
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
