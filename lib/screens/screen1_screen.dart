import 'package:flutter/material.dart';


class Screen1Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: UserInfo(),
     floatingActionButton: FloatingActionButton(
       onPressed: () => Navigator.pushNamed(context, "screen2"),
       child: Icon(Icons.accessibility_new),
     ),
   );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
  }) : super(key: key);

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
            title: Text("Name: "),
          ),
          ListTile(
            title: Text("Age: "),
          ),
          Text("Professions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(
            title: Text("Profesion: "),
          ),
          ListTile(
            title: Text("Profesion: "),
          ),
        ],
      ),
    );
  }
}