part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class Login_CheckBox extends LoginState {}

final class LoginLeading extends LoginState {}

final class LoginSeccus extends LoginState {}

final class LoginError extends LoginState {}
