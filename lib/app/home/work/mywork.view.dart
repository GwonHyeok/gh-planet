import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/app/home/work/mywork_item.widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeMyWorkView extends StatelessWidget {
  final kDefaultGridCrossAxisCount = 3;

  const HomeMyWorkView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ResponsiveValue<int>(context,
                    defaultValue: kDefaultGridCrossAxisCount,
                    conditionalValues: [
                      const Condition.equals(name: MOBILE, value: 1),
                      const Condition.equals(name: PHONE, value: 1),
                      const Condition.equals(name: TABLET, value: 1),
                      const Condition.equals(name: DESKTOP, value: 3),
                    ]).value ??
                kDefaultGridCrossAxisCount,
          ),
          itemBuilder: (context, index) {
            return MyWorkItem(
              value: Random.secure().nextDouble().toString(),
            );
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            minimumSize: const Size(double.infinity, 64),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          onPressed: () => context.push('/works'),
          child: const Text('More Works'),
        )
      ],
    );
  }
}
