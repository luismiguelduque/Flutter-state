import 'package:meta/meta.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {

  UserCubit() : super(UserInitial());

  void selectUser(User user){
    emit(UserSelected(user));
  }

  void changeAge(int age){
    final currentState = state;
    if(currentState is UserSelected){
      final newUser = currentState.user.copyWith(age: "27");
      emit(UserSelected(newUser));
    }
  }

  void addProfession(){
    final currentState = state;
    if(currentState is UserSelected){
      final newProfessions = [
        ...currentState.user.professions,
        'Profession ${currentState.user.professions.length+1}'
      ];
      final newUser = currentState.user.copyWith(professions: newProfessions);
      emit(UserSelected(newUser));
    }
  }

  void deleteUser(){
    emit(UserInitial());
  }

}