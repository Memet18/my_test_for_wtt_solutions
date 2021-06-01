import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_test_for_wtt_solutions/common/app_colors.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/bloc/login_bloc/login_event.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/widgets/big_text_field_widget.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/widgets/button_widget.dart';
import 'package:my_test_for_wtt_solutions/generated/l10n.dart';
import 'package:sizer/sizer.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: 40.h,
                width: 100.w,
                child: Image.asset(
                  "assets/images/city_image.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 100.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.tranTopLoginGradientColor,
                      AppColors.tranBottomLoginGradientColor,
                    ],
                  )),
                  child: Center(
                    child: Text(
                      S.of(context).time_to_set_account,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 5.5.h,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 60.h,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigTextFieldWidget(
                          labelText: S.of(context).phone_number,
                          textInputType: TextInputType.phone,
                          hintText: S.of(context).enter_phone_number,
                          iconAssets: 'assets/icons/icon_phone.png',
                          onPressedIcon: () {},
                          onChanged: (value) => context.read<LoginBloc>().add(
                                LoginUsernameChanged(username: value),
                              ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        BigTextFieldWidget(
                          labelText:S.of(context).password,
                          obscureText: true,
                          hintText: S.of(context).enter_password,
                          iconAssets: 'assets/icons/lock_gray.png',
                          onPressedIcon: () => print('dsgsdgsd'),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        BigTextFieldWidget(
                          labelText:S.of(context).confirm_password,
                          obscureText: true,
                          hintText: S.of(context).enter_password,
                          iconAssets: 'assets/icons/lock_gray.png',
                          onPressedIcon: () {},
                        ),
                      ],
                    ),
                    ButtonWidget(
                        titleButton: S.of(context).next,
                        titleColor: AppColors.bottomLoginGradientColor,
                        onPressed: () => print("next"))
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
