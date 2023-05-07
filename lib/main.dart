import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/app/home/home.page.dart';
import 'package:portfolio/app/work/detail/detail.page.dart';
import 'package:portfolio/app/work/list/list.page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GH Planet',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Pretendard',
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      routerConfig: GoRouter(routes: [
        HomePage.route,
        WorkListPage.route,
        WorkDetailPage.route,
      ]),
    );
  }
}
