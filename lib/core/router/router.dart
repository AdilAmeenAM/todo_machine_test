import 'package:go_router/go_router.dart';
import 'package:mimo_todo_app/features/authentication/service/auth_service.dart';
import 'package:mimo_todo_app/features/authentication/view/pages/login_page.dart';
import 'package:mimo_todo_app/features/authentication/view/pages/register_page.dart';
import 'package:mimo_todo_app/features/todo/view/pages/todo_category_page.dart';
import 'package:mimo_todo_app/main.dart';

final router = GoRouter(
  navigatorKey: App.navigatorKey,
  initialLocation: LoginPage.routePath,
  routes: [
    GoRoute(
      path: LoginPage.routePath,
      builder: (context, state) => const LoginPage(),
      redirect: (context, state) {
        if (AuthService.getCurrentUser() != null) {
          return CategoriesPage.routePath;
        }

        return null;
      },
    ),
    GoRoute(
      path: RegisterPage.routePath,
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: CategoriesPage.routePath,
      builder: (context, state) => const CategoriesPage(),
    ),
  ],
);
