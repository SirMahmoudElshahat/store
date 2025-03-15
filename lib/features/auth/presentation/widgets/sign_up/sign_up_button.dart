import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udemy_store/core/common/animations/animate_do.dart';
import 'package:udemy_store/core/common/widgets/custom_linear_button.dart';
import 'package:udemy_store/core/common/widgets/text_app.dart';
import 'package:udemy_store/core/extensions/context_extension.dart';
import 'package:udemy_store/core/language/lang_keys.dart';
import 'package:udemy_store/core/style/fonts/font_weight_helper.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 600,
      child: CustomLinearButton(
        onPressed: () {},
        height: 50.h,
        width: MediaQuery.of(context).size.width,
        child: TextApp(
          text: context.translate(LangKeys.signUp),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
      ),
    );
  }
}
