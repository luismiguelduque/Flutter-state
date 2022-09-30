
part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {
  final userExist = false;
}

class UserSelected extends UserState {
  final userExist = true;
  final User user;

  UserSelected(this.user);
}