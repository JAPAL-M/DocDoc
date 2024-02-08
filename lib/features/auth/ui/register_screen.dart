import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/widgets/custom_material_button.dart';
import 'package:docdoc_app/features/auth/logic/register_cubit/cubit/register_cubit.dart';
import 'package:docdoc_app/features/auth/ui/widgets/already_have_account_text.dart';
import 'package:docdoc_app/features/auth/ui/widgets/register_bloc_listener.dart';
import 'package:docdoc_app/features/auth/ui/widgets/register_form.dart';
import 'package:docdoc_app/features/auth/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Account",
                style: TextStyles.font24BlueBold,
              ),
              verticalSpacing(8),
              Text(
                "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                style: TextStyles.font14GrayRegular,
              ),
              verticalSpacing(17),
              const RegisterForm(),
              verticalSpacing(32),
              CustomMaterialButton(
                  textButton: "Create Account",
                  onPressed: () {
                    validateThenDoSignup(context);
                  }),
              verticalSpacing(46),
              const TermsAndConditionsText(),
              verticalSpacing(16),
              const AlreadyHaveAccountText(),
              const RegisterBlocListener(),
            ],
          ),
        ),
      )),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitRegisterState();
    }
  }
}
