import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/user.dart';
import '../bloc/user/user_cubit.dart';


class Screen1Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        actions: [
          IconButton(onPressed: ()=> context.read<UserCubit>().deleteUser(), icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: BodyScaffold(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "screen2"),
        child: Icon(Icons.accessibility_new),
      ),
   );
  }
}

class BodyScaffold extends StatelessWidget {
  const BodyScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (_, state){
        switch (state.runtimeType) {
          case UserInitial:
            return Center(child: Text("No selected user"),);
          case UserSelected:
            return UserInfo(user: (state as UserSelected).user,);
          default:
            return Container();
        }
        /*
        if(state is UserInitial){
          return Center(child: Text("No selected user"),);
        } else if(state is UserSelected){
          return UserInfo(user: state.user,);
        }
        return Container();
        */
      }
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
          ...user.professions.map((item) {
            return ListTile(
              title: Text("Profesion: $item"),
            );
          }).toList(),
        ],
      ),
    );
  }
}