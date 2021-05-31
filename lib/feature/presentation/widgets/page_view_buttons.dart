import 'package:flutter/material.dart';
import 'package:my_test_for_wtt_solutions/common/app_colors.dart';
import 'package:sizer/sizer.dart';

class PageViewButton extends StatelessWidget {
  final String titleButton;
  final bool clickedButton;
  final Function onTap;

  const PageViewButton(
      {Key key,
      @required this.titleButton,
      this.clickedButton = true,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Stack(
        children: [
          Container(
            height: 6.5.h,
            width: 50.w,
            color: Color(0x14000000),
            child: Center(
              child: Text(
                titleButton,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: clickedButton == true
                      ? AppColors.textColor
                      : AppColors.tranTextColor,
                  fontSize: 2.h,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 0.5.h,
              width: 50.w,
              color: clickedButton == true ? AppColors.textColor : null,
            ),
          )
        ],
      ),
    );
  }
}
