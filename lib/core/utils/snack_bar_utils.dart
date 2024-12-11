import 'package:flutter/material.dart';
import 'package:mimo_todo_app/main.dart';

class SnackBarUtils {
  static void showSnackbar(String message) {
    App.scaffoldMessengerKey.currentState!
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
