import 'package:flutter/material.dart';
import 'package:mvvm/view/home.dart';
import 'package:mvvm/view_models/todo_vm.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => TodoViewModel(),
      ),
    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  ));
}
