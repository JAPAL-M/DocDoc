import 'package:docdoc_app/core/helper/extension.dart';
import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?",
            style: TextStyles.font12DarkBlueRegular),
        TextButton(
          child: Text("Sign Up", style: TextStyles.font12BlueSemiBold),
          onPressed: () {
            context.pushNamed(Routes.registerScreen);
          },
        )
      ],
    );
  }
}
