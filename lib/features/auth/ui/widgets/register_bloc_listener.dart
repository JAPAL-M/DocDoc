import 'package:docdoc_app/core/helper/extension.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/core/theme/app_color.dart';
import 'package:docdoc_app/features/auth/logic/register_cubit/cubit/register_cubit.dart';
import 'package:docdoc_app/features/auth/logic/register_cubit/cubit/register_state.dart';
import 'package:docdoc_app/features/auth/ui/widgets/login_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
          success: (data) {
            context.pop();
            showSuccessDialog(context);
          },
          error: (error) {
            setupErrorState(context, error!);
          },
        );
      },
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      child: const SizedBox.shrink(),
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Signup Successful'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Congratulations, you have signed up successfully!'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.blue,
              onSurface: Colors.grey,
            ),
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
            child: const Text('Continue'),
          ),
        ],
      );
    },
  );
}
