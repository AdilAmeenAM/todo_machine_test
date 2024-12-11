import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mimo_todo_app/core/router/router.dart';
import 'package:mimo_todo_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: App()));
  await GetStorage.init();
}

class App extends StatelessWidget {
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  static final navigatorKey = GlobalKey<NavigatorState>();
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: scaffoldMessengerKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}

// class CategoriesPage extends StatefulWidget {
//   const CategoriesPage({super.key});

//   @override
//   _CategoriesPageState createState() => _CategoriesPageState();
// }

// class _CategoriesPageState extends State<CategoriesPage> {
//   final List<String> todos = [];

//   void _showAddTodoDialog() {
//     final TextEditingController todoController = TextEditingController();

//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Add To-Do'),
//           content: TextField(
//             controller: todoController,
//             decoration: const InputDecoration(hintText: 'Enter your task'),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 String newTodo = todoController.text.trim();
//                 if (newTodo.isNotEmpty) {
//                   setState(() {
//                     todos.add(newTodo);
//                   });
//                 }
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Add'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Categories', style: TextStyle(color: Colors.black)),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.search, color: Colors.black),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           const Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 '"The memories is a shield and life helper."',
//                 style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
//               ),
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//               padding: const EdgeInsets.all(16),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 16,
//                 mainAxisSpacing: 16,
//               ),
//               itemCount: todos.length + 1,
//               itemBuilder: (context, index) {
//                 if (index == 0) {
//                   return GestureDetector(
//                     onTap: _showAddTodoDialog,
//                     child: Card(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: const Center(
//                         child: Icon(
//                           Icons.add,
//                           size: 40,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                   );
//                 }

//                 final todo = todos[index - 1];
//                 return Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Center(
//                       child: Text(
//                         todo,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
