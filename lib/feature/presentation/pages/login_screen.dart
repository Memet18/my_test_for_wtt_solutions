import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_test_for_wtt_solutions/common/app_colors.dart';
import 'package:my_test_for_wtt_solutions/feature/domain/form_submission_status.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/bloc/login_bloc/login_event.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/bloc/login_bloc/login_state.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/bloc/page_view_bloc/page_view_bloc.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/pages/create_account_screen.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/widgets/button_widget.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/widgets/little_tex_field_widget.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/widgets/page_view_buttons.dart';
import 'package:my_test_for_wtt_solutions/generated/l10n.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _pageBloc = BlocProvider.of<PageViewBloc>(context);
    PageController controller = PageController(initialPage: 0);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 100.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.topLoginGradientColor,
                      AppColors.bottomLoginGradientColor,
                    ],
                  )),
                  child: Center(
                    child: BlocBuilder<PageViewBloc, bool>(
                      builder: (BuildContext context, state) => Text(
                        state
                            ? S.of(context).see_you_there
                            : S.of(context).create_account,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 4.h,
                            color: AppColors.textColor),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Row(
                    children: [
                      BlocBuilder<PageViewBloc, bool>(
                          builder: (BuildContext context, clicked) {
                        return PageViewButton(
                          onTap: () {
                            controller.animateToPage(0,
                                duration: Duration(milliseconds: 350),
                                curve: Curves.bounceInOut);
                          },
                          titleButton: S.of(context).sign_up,
                          clickedButton: clicked ? false : true,
                        );
                      }),
                      BlocBuilder<PageViewBloc, bool>(
                        builder: (BuildContext context, clicked) =>
                            PageViewButton(
                          onTap: () {
                            controller.animateToPage(1,
                                duration: Duration(milliseconds: 350),
                                curve: Curves.bounceInOut);
                          },
                          titleButton: S.of(context).log_in,
                          clickedButton: clicked ? true : false,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 60.h,
              child: BlocBuilder<PageViewBloc, bool>(
                  builder: (BuildContext context, state) {
                return PageView(
                  onPageChanged: (int page) {
                    if (page == 0) {
                      _pageBloc.add(PageEvent.event_first);
                    } else {
                      _pageBloc.add(PageEvent.event_second);
                    }
                  },
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  children: <Widget>[
                    Column(
                      children: [
                        _socialNetworkSignInButtons(context),
                        _dividerLine(context),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ButtonWidget(
                                  titleButton: S.of(context).sign_up_with_email,
                                  bgButtonColor: AppColors.buttonColorGrey,
                                  iconAssets:
                                      'assets/icons/icon_email_white.png',
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CreateAccountScreen()));
                                  }),
                              SizedBox(
                                height: 8.h,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    S.of(context).have_account,
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: AppColors.colorBlack,
                                      fontSize: 1.4.h,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      controller.animateToPage(1,
                                          duration: Duration(milliseconds: 350),
                                          curve: Curves.bounceInOut);
                                    },
                                    child: Text(
                                      S.of(context).click_here,
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: AppColors.topLoginGradientColor,
                                        fontSize: 1.4.h,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.5.h,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          _socialNetworkLogInButtons(context),
                          _dividerLine(context),
                          _emailField(context),
                          SizedBox(
                            height: 2.h,
                          ),
                          _passwordField(context),
                          SizedBox(
                            height: 2.h,
                          ),
                          _loginButton(context),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                S.of(context).forgot_password,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: AppColors.colorBlack,
                                  fontSize: 1.4.h,
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.animateToPage(0,
                                      duration: Duration(milliseconds: 350),
                                      curve: Curves.bounceInOut);
                                },
                                child: Text(
                                  S.of(context).click_here,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: AppColors.topLoginGradientColor,
                                    fontSize: 1.4.h,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _socialNetworkLogInButtons(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        ButtonWidget(
            iconAssets: 'assets/icons/facebook_icon.png',
            titleButton: S.of(context).log_in_with_facebook,
            onPressed: () => print(S.of(context).log_in_with_facebook)),
        SizedBox(
          height: 2.h,
        ),
        ButtonWidget(
            iconAssets: 'assets/icons/google_icon.png',
            titleButton: S.of(context).log_in_with_google,
            onPressed: () => print(S.of(context).log_in_with_google)),
        SizedBox(
          height: 2.h,
        ),
        ButtonWidget(
            iconAssets: 'assets/icons/instagram_icon.png',
            titleButton: S.of(context).log_in_with_instagram,
            onPressed: () => print(S.of(context).log_in_with_instagram)),
      ],
    );
  }

  Widget _socialNetworkSignInButtons(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        ButtonWidget(
            iconAssets: 'assets/icons/facebook_icon.png',
            titleButton: S.of(context).sign_up_with_facebook,
            onPressed: () => print(S.of(context).sign_up_with_facebook)),
        SizedBox(
          height: 2.h,
        ),
        ButtonWidget(
            iconAssets: 'assets/icons/google_icon.png',
            titleButton: S.of(context).sign_up_with_google,
            onPressed: () => print(S.of(context).sign_up_with_google)),
        SizedBox(
          height: 2.h,
        ),
        ButtonWidget(
            iconAssets: 'assets/icons/instagram_icon.png',
            titleButton: S.of(context).sign_up_with_instagram,
            onPressed: () => print(S.of(context).sign_up_with_instagram)),
      ],
    );
  }

  Widget _dividerLine(BuildContext context) {
    return Container(
      width: 78.w,
      height: 5.5.h,
      child: Row(children: <Widget>[
        Expanded(
          child: Container(
            color: AppColors.textFieldBgColorGrey,
            height: 0.3.h,
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Text(
          S.of(context).or,
          style:
              TextStyle(fontSize: 2.2.h, color: AppColors.textFieldBgColorGrey),
        ),
        SizedBox(
          width: 2.w,
        ),
        Expanded(
          child: Container(
            color: AppColors.textFieldBgColorGrey,
            height: 0.3.h,
          ),
        ),
      ]),
    );
  }

  Widget _emailField(BuildContext context1) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (BuildContext context, state) => LittleTextFieldWidget(
        labelText:S.of(context1).email,
        hintText: S.of(context1).enter_email,
        iconAssets: 'assets/icons/icon_email.png',
        textValidator: state.isValidUsername ? null : 'Email is too short',
        onChanged: (value) => context.read<LoginBloc>().add(
              LoginUsernameChanged(username: value),
            ),
        onPressedIcon: () {},
      ),
    );
  }

  Widget _passwordField(BuildContext context1) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (BuildContext context, state) => LittleTextFieldWidget(
        labelText:S.of(context1).password,
        hintText: S.of(context1).enter_password,
        iconAssets: 'assets/icons/icon_lock.png',
        obscureText: true,
        textValidator: state.isValidUsername ? null : 'Password is too short',
        onChanged: (value) => context.read<LoginBloc>().add(
              LoginUsernameChanged(username: value),
            ),
        onPressedIcon: () {},
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return state.formStatus is FormSubmitting
          ? CircularProgressIndicator()
          : ButtonWidget(
              titleButton: S.of(context).log_in,
              bgButtonColor: AppColors.topLoginGradientColor,
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  context.read<LoginBloc>().add(LoginSubmitted());
                }
              },
            );
    });
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
