import 'package:flutter/material.dart';

import '../models/user.dart';

class UserService with ChangeNotifier {

  User _user = User(
    age: "",
    name: "",
    professions: []
  );

  User get user => this._user;

  bool get userExist => this._user.name != "" ? true : false;

  set user(User user){
    this._user = user;
    notifyListeners();
  }

  void changeAge(int age){
    this._user.age = "$age";
    notifyListeners();
  }

  void removeuser(){
    this._user = User(
      age: "",
      name: "",
      professions: []
    );
    notifyListeners();
  }

  void addProfession(){
    this._user.professions.add("Professions: ${this._user.professions.length}");
    notifyListeners();
  }
}