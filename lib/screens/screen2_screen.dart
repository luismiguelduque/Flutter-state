import 'package:flutter/material.dart';


class Screen2Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
              onPressed: (){},
              child: Text('Set user', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){},
              child: Text('Change age', style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){},
              child: Text('Add profesion', style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
      
    );
  }
} 