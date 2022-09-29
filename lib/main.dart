import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/user_service.dart';
import '../screens/screen1_screen.dart';
import '../screens/screen2_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(lazy: false, create: (_) => new UserService(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: "screen1",
        routes: {
          'screen1': (_) => Screen1Screen(),
          'screen2': (_) => Screen2Screen(),
        },
      ),
    );
  }
}