import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:mimo_todo_app/core/utils/snack_bar_utils.dart';
import 'package:mimo_todo_app/features/authentication/service/auth_service.dart';
import 'package:mimo_todo_app/features/authentication/view/pages/login_page.dart';
import 'package:mimo_todo_app/features/todo/view/pages/todo_category_page.dart';
import 'package:mimo_todo_app/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  void build() {
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        App.navigatorKey.currentContext!.go(CategoriesPage.routePath);
      } else {
        App.navigatorKey.currentContext!.go(LoginPage.routePath);
      }
    });
  }

  Future<void> login(
    String email,
    String password,
  ) async {
    try {
      await AuthService.signInWithEmailPassword(
        email,
        password,
      );
    } on Exception catch (e) {
      SnackBarUtils.showSnackbar(e.toString());
    }
  }

  Future<void> register(
      {required String email,
      required String password,
      required String name}) async {
    try {
      await AuthService.signUpWithEmailPassword(
          email: email, password: password, name: name);

      SnackBarUtils.showSnackbar("Account created successfully, Please login");
    } on Exception catch (e) {
      SnackBarUtils.showSnackbar(e.toString());
    }
  }

  Future<void> signOut() async {
    try {
      await AuthService.signOut();
    } on Exception catch (e) {
      SnackBarUtils.showSnackbar(e.toString());
    }
  }

  /// Validate the email address using regex
  String? validateEmail(String? value) {
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value ?? '')) {
      return "Invalid email address";
    }

    return null;
  }

  /// Validate the password
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    /// Password must be at least 6 characters long
    if (value.length < 6) {
      return "Password must be at least 6 characters";
    }

    return null;
  }

  /// Validate the confirm password
  String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    /// Confirm password must match the password
    if (value != password) {
      return "Passwords do not match";
    }

    return null;
  }
}
