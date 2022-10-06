import 'package:first_source_assessment/core/messages/app_messages.dart';
import 'package:first_source_assessment/core/resources/app_theme.dart';
import 'package:first_source_assessment/features/fee_listen/view/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({final Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 1920),
      builder: (final context, final child) {
        return MaterialApp(
          title: AppMessage.AppName,
          debugShowCheckedModeBanner: false,
          home: const MainPage(),
          theme: AppThemes().lightTheme,
          supportedLocales: const [Locale('en')],
        );
      },
    );
  }
}
