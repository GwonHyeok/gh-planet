import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      title: const Text('PORTFOLIO'),
      pinned: true,
      floating: true,
      expandedHeight: expanded ? 640 : null,
      actions: [
        TextButton(onPressed: () {}, child: const Text('Contact')),
      ],
      flexibleSpace: expanded
          ? flexibleSpace ??
              FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      'https://picsum.photos/800/240?grayscale&blur=6',
                      fit: BoxFit.cover,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hello Everyone',
                          style: GoogleFonts.notoSans(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          """World class consumer and trends research\ncapabilities we design for tomorrow customers in\ntomorrow’s markets.""",
                          style: GoogleFonts.notoSans(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(color: Colors.white),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              )
          : null,
    );
  }
}
