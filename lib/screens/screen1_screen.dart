import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/models/user.dart';

import '../services/user_service.dart';


class Screen1Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        actions: [
          IconButton(
            onPressed: (){
              userService.removeuser();
            },
            icon: Icon(Icons.cancel)
          ),
        ],
      ),
      body: userService.userExist 
        ? UserInfo(user: userService.user,)
        : Center(child: Text("No selected user"),),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "screen2"),
        child: Icon(Icons.accessibility_new),
      ),
   );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    required this.user,
    Key? key,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("General", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(
            title: Text("Name: ${user.name}"),
          ),
          ListTile(
            title: Text("Age: ${user.age}"),
          ),
          Text("Professions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ...user.professions.map((item){
            return ListTile(
              title: Text("* $item"),
            );
          }).toList(),
        ],
      ),
    );
  }
}