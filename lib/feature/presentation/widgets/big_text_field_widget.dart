import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_test_for_wtt_solutions/common/app_colors.dart';
import 'package:sizer/sizer.dart';

class BigTextFieldWidget extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String iconAssets;
  final bool obscureText;
  final TextInputType textInputType;
  final Function onPressedIcon;
  final Function textControler;
  final bool validator;
  final String textValidator;
  final Function onChanged;

  const BigTextFieldWidget({
    Key key,
    @required this.hintText,
    @required this.iconAssets,
    @required this.onPressedIcon,
    @required this.labelText,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.textControler,
    this.validator,
    this.textValidator,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78.w,
      height: 6.5.h,
      child: TextFormField(
        keyboardType: textInputType,
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 2.5.h,
            color: AppColors.colorBlack),
        obscureText: obscureText,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.textFieldBgColorGrey,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textFieldBgColorGrey),
              borderRadius: BorderRadius.circular(3.h),
            ),
            contentPadding: EdgeInsets.only(left: 2.w, bottom: 2.h, top: 2.h),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3.h),
            ),
            border: InputBorder.none,
            suffixIcon: IconButton(
                splashRadius: 2.h,
                onPressed: () {
                  onPressedIcon();
                },
                icon: Container(child: Image.asset(iconAssets))),
            labelText: labelText,
            labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 2.3.h,
                color: AppColors.textFieldTextColor),
            hintText: hintText,
            hintStyle: TextStyle(
                color: AppColors.textFieldTextColor, fontSize: 2.3.h)),
      ),
    );
  }
}
