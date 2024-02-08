import 'package:docdoc_app/core/helper/app_regex.dart';
import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/widgets/custom_text_form_field.dart';
import 'package:docdoc_app/features/auth/logic/register_cubit/cubit/register_cubit.dart';
import 'package:docdoc_app/features/auth/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<RegisterCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
              controller: context.read<RegisterCubit>().nameController,
              hintText: "Name",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid name";
                }
              }),
          verticalSpacing(16),
          CustomTextFormField(
            controller: context.read<RegisterCubit>().emailController,
            hintText: "Email",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
            },
          ),
          verticalSpacing(16),
          CustomTextFormField(
              controller: context.read<RegisterCubit>().phoneController,
              hintText: "Your number",
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value)) {
                  return "Please enter a valid number";
                }
              }),
          verticalSpacing(16),
          CustomTextFormField(
            controller: context.read<RegisterCubit>().passwordController,
            hintText: "Password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid password";
              }
            },
          ),
          verticalSpacing(16),
          CustomTextFormField(
              controller:
                  context.read<RegisterCubit>().passwordConfirmationController,
              hintText: "Password Confirmation",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a valid password";
                }
              }),
          verticalSpacing(32),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasUpperCase: hasUppercase,
          ),
        ],
      ),
    );
  }
}
