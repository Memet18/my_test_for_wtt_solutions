import 'package:flutter/material.dart';
import 'package:my_test_for_wtt_solutions/common/app_colors.dart';
import 'package:sizer/sizer.dart';

class LittleTextFieldWidget extends StatelessWidget {
  final String hintText;
  final String iconAssets;
  final bool obscureText;
  final bool validator;
  final String textValidator;
  final Function onPressedIcon;
  final Function onChanged;

  const LittleTextFieldWidget({
    Key key,
    @required this.hintText,
    @required this.iconAssets,
    @required this.onPressedIcon,
    this.obscureText = false,
    this.onChanged,
    this.validator,
    this.textValidator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78.w,
      height: 5.5.h,
      decoration: BoxDecoration(
          color: AppColors.textFieldBgColorGrey,
          borderRadius: BorderRadius.circular(3.h)),
      child: TextFormField(
        onChanged: (value) {
          onChanged(value);
        },
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 2.3.h,
            color: AppColors.colorBlack),
        obscureText: obscureText,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.h),
            ),
            border: InputBorder.none,
            prefixIcon: IconButton(
                splashRadius: 2.h,
                onPressed: () {
                  onPressedIcon();
                },
                icon: Container(height: 3.h, child: Image.asset(iconAssets))),
            hintText: hintText,
            hintStyle:
                TextStyle(color: AppColors.textFieldTextColor, fontSize: 2.h)),
      ),
    );
  }
}
