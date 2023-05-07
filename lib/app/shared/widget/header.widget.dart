import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppSliverHeader extends StatelessWidget {
  final bool expanded;
  final Widget? flexibleSpace;

  const AppSliverHeader({
    Key? key,
    this.expanded = true,
    this.flexibleSpace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      title: const Text('GH Planet'),
      pinned: true,
      floating: true,
      expandedHeight: expanded ? 640 : null,
      actions: [
        TextButton(
          onPressed: () => context.go('/'),
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const Text('Home'),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const Text('Contact'),
        ),
      ],
      flexibleSpace: expanded
          ? flexibleSpace ??
              FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/header.jpg',
                      fit: BoxFit.cover,
                    ),
                    ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'GH Planet',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              """초기 스타트업 경험
다양한 작업 경험으로""",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
          : null,
    );
  }
}
