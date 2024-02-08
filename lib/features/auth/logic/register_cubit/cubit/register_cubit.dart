import 'package:docdoc_app/features/auth/data/register/models/register_request_body.dart';
import 'package:docdoc_app/features/auth/data/register/repos/register_repo.dart';
import 'package:docdoc_app/features/auth/logic/register_cubit/cubit/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  final RegisterRepo _registerRepo;

  void emitRegisterState() async {
    emit(const RegisterState.loading());
    final response = await _registerRepo.register(RegisterRequestBody(
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text,
        phone: phoneController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0));
    response.when(success: (registerResponseBody) {
      emit(RegisterState.success(registerResponseBody));
    }, failure: (error) {
      emit(RegisterState.error(error: error.apiErrorModel.message ?? ""));
    });
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
}
