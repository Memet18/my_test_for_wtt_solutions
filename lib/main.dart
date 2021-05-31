import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_test_for_wtt_solutions/common/app_colors.dart';
import 'package:my_test_for_wtt_solutions/feature/domain/login_repository/login_repository.dart';
import 'package:my_test_for_wtt_solutions/feature/presentation/pages/login_screen.dart';
import 'package:sizer/sizer.dart';
import 'feature/presentation/bloc/login_bloc/login_bloc.dart';
import 'feature/presentation/bloc/page_view_bloc/page_view_bloc.dart';
import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        theme: ThemeData(
          primaryColor: AppColors.textFieldTextColor,
          primarySwatch: Colors.grey,
        ),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: RepositoryProvider(
          create: (BuildContext context) => LoginRepository(),
          child: MultiBlocProvider(providers: [
            BlocProvider(
              create: (context) => PageViewBloc(false),
            ),
            BlocProvider(
              create: (context) => LoginBloc(
                authRepo: context.read<LoginRepository>(),
              ),
            )
          ], child: LoginScreen()),
        ),
      );
    });
  }
}
