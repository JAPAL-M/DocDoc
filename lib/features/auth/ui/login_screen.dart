import 'package:docdoc_app/core/helper/spacing.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:docdoc_app/core/widgets/custom_material_button.dart';
import 'package:docdoc_app/core/widgets/custom_text_form_field.dart';
import 'package:docdoc_app/features/auth/ui/widgets/already_have_account_text.dart';
import 'package:docdoc_app/features/auth/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

var formKey = GlobalKey<FormState>();
bool isobscureText = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpacing(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ).pOnly(bottom: 20.h),
                verticalSpacing(40),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const CustomTextFormField(hintText: "Email"),
                      verticalSpacing(16),
                      CustomTextFormField(
                        hintText: "Password",
                        isobscureText: isobscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isobscureText = !isobscureText;
                            });
                          },
                          child: Icon(isobscureText == false
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      )
                    ],
                  ),
                ),
                verticalSpacing(25),

                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyles.font13BlueRegular,
                  ),
                ),
                verticalSpacing(41),
                CustomMaterialButton(textButton: "Login", onPressed: () {}),
                verticalSpacing(46),
                const TermsAndConditionsText(),
                verticalSpacing(30),
                const AlreadyHaveAccountText().centered()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
