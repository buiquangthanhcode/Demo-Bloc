import 'package:bloc/bloc.dart';

import 'login_event.dart';
import 'login_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginStateLoading()) {
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  Future<void> _onLoginButtonPressed(
      LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginStateLoading());

    try {
      await Future.delayed(Duration(seconds: 2)); // simulating network delay
      emit(LoginStateSuccess(message: 'Successfully signed in'));
    } catch (error) {
      emit(LoginStateFailure(message: error.toString()));
    }
  }
}
