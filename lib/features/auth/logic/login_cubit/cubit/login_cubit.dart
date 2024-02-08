import 'package:docdoc_app/features/auth/data/login/models/login_request_body.dart';
import 'package:docdoc_app/features/auth/data/login/repos/login_repo.dart';
import 'login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  final LoginRepo _loginRepo;
  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));
    response.when(success: (loginResponseBody) {
      emit(LoginState.success(loginResponseBody));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    });
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
}
