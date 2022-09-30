import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_app/bloc/user/user_cubit.dart';

import '../screens/screen1_screen.dart';
import '../screens/screen2_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit(),)
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