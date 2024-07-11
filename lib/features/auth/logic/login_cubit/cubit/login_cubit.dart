import 'package:docdoc_app/core/helper/cache_helper.dart';
import 'package:docdoc_app/core/networking/dio_factory.dart';
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
    response.when(success: (loginResponseBody) async {
      await saveUserToken(loginResponseBody.userData?.token ?? '');
      emit(LoginState.success(loginResponseBody));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    });
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> saveUserToken(String token) async {
    await CacheHelper.saveData(key: 'token', value: token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
