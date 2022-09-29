import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/models/user.dart';
import 'package:state_app/services/user_service.dart';


class Screen2Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: userService.userExist 
        ? Text("${userService.user.name}")
        : Text("Screen 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                userService.user = User(name: "John Doe", age: "32", professions: ["Engineer", "Developer"]);
              },
              child: Text('Set user', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                userService.changeAge(10);
              },
              child: Text('Change age', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                userService.addProfession();
              },
              child: Text('Add profesion', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}