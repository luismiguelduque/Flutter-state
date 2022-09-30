import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/user.dart';
import '../bloc/user/user_cubit.dart';


class Screen2Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final userCubit = context.read<UserCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                final newUser = new User(name: "John Doe", age: "34", professions: ["Engineer"]);
                userCubit.selectUser(newUser);
              },
              child: Text('Set user', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                userCubit.changeAge(27);
              },
              child: Text('Change age', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                userCubit.addProfession();
              },
              child: Text('Add profesion', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}