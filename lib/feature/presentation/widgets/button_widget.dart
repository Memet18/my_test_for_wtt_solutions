import 'package:flutter/material.dart';
import 'package:my_test_for_wtt_solutions/common/app_colors.dart';
import 'package:sizer/sizer.dart';

class ButtonWidget extends StatelessWidget {
  final String iconAssets;
  final String titleButton;
  final Color titleColor;
  final Color bgButtonColor;
  final Function onPressed;

  const ButtonWidget({
    Key key,
    this.iconAssets,
    this.titleColor = AppColors.textColor,
    this.bgButtonColor = AppColors.colorBlack,
    @required this.titleButton,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78.w,
      height: 6.5.h,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(bgButtonColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.h),
            ))),
        onPressed: onPressed,
        child: Row(
          children: [
            SizedBox(
              width: 1.w,
            ),
            iconAssets == null
                ? const SizedBox()
                : Container(height: 3.5.h, child: Image.asset(iconAssets)),
            Expanded(
              child: Center(
                child: Text(
                  titleButton,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 2.3.h,
                      color: titleColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
