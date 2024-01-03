import 'package:flutter/material.dart';
import 'package:mvvm/helpers/app_url.dart';
import 'package:mvvm/helpers/network_helper.dart';
import 'package:mvvm/models/todo_model.dart';
import 'package:mvvm/service/services.dart';

class TodoViewModel extends ChangeNotifier {
  List<TodoModel> _todoModel = [];
  List<TodoModel> get todoModel => _todoModel;
  setTodoModel(List<TodoModel> todoModel) {
    _todoModel = todoModel;
    notifyListeners();
  }

  getTodoResponse() async {
    var finalResponse = await ServiceClass.getTodoData(appUrl.todo);
    if (finalResponse is Success) {
      setTodoModel(finalResponse.response as List<TodoModel>);
    }
    if (finalResponse is Failure) {
      print(finalResponse.code);
    }
  }
}
