import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/app/home/contact/contact.view.dart';
import 'package:portfolio/app/home/work/mywork.view.dart';
import 'package:portfolio/app/shared/widget/footer.widget.dart';
import 'package:portfolio/app/shared/widget/header.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static GoRoute route =
      GoRoute(path: '/', builder: (context, state) => const HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const AppSliverHeader(),
          ];
        },
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HomeMyWorkView(),
              HomeContactView(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
