import 'package:auto_route/auto_route_annotations.dart';
import 'package:notes_ddd/presentation/notes/notes_screen.dart';
import 'package:notes_ddd/presentation/sign_in/sign_in_page.dart';
import 'package:notes_ddd/presentation/splash/splash_screen.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashScreen splashScreen;
  SignInPage signInPage;
  NotesScreen notesScreen;
}
