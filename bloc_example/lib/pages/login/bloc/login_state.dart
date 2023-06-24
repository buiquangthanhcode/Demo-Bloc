import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  const LoginState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class LoginStateLoading extends LoginState {}

class LoginStateSuccess extends LoginState {
  final String message;

  LoginStateSuccess({required this.message});
  @override
  List<Object> get props => [message];
}

class LoginStateFailure extends LoginState {
  final String message;

  LoginStateFailure({required this.message});
  @override
  List<Object> get props => [message];
}
