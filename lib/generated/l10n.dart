// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Create account`
  String get create_account {
    return Intl.message(
      'Create account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `See You There`
  String get see_you_there {
    return Intl.message(
      'See You There',
      name: 'see_you_there',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get log_in {
    return Intl.message(
      'Log in',
      name: 'log_in',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message(
      'Sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Facebook`
  String get log_in_with_facebook {
    return Intl.message(
      'Log in with Facebook',
      name: 'log_in_with_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Google`
  String get log_in_with_google {
    return Intl.message(
      'Log in with Google',
      name: 'log_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Instagram`
  String get log_in_with_instagram {
    return Intl.message(
      'Log in with Instagram',
      name: 'log_in_with_instagram',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Facebook`
  String get sign_up_with_facebook {
    return Intl.message(
      'Sign up with Facebook',
      name: 'sign_up_with_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Google`
  String get sign_up_with_google {
    return Intl.message(
      'Sign up with Google',
      name: 'sign_up_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Instagram`
  String get sign_up_with_instagram {
    return Intl.message(
      'Sign up with Instagram',
      name: 'sign_up_with_instagram',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Email`
  String get sign_up_with_email {
    return Intl.message(
      'Sign up with Email',
      name: 'sign_up_with_email',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgot_password {
    return Intl.message(
      'Forgot your password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get have_account {
    return Intl.message(
      'Already have an account?',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Time to set up your account!`
  String get time_to_set_account {
    return Intl.message(
      'Time to set up your account!',
      name: 'time_to_set_account',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `NEXT`
  String get next {
    return Intl.message(
      'NEXT',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Click here`
  String get click_here {
    return Intl.message(
      'Click here',
      name: 'click_here',
      desc: '',
      args: [],
    );
  }

  /// `Email is not valid`
  String get email_not_valid {
    return Intl.message(
      'Email is not valid',
      name: 'email_not_valid',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}