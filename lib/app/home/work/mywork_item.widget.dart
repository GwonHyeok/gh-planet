import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyWorkItem extends StatefulWidget {
  final String value;

  const MyWorkItem({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  State<MyWorkItem> createState() => _MyWorkItemState();
}

class _MyWorkItemState extends State<MyWorkItem> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/works/${widget.value}');
      },
      onHover: (value) => setState(() => _isHover = value),
      child: ClipRect(
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            AnimatedScale(
              scale: _isHover ? 1.1 : 1,
              duration: const Duration(milliseconds: 200),
              child: Image.network(
                'https://picsum.photos/300/300?random=${widget.value}',
                fit: BoxFit.cover,
              ),
            ),
            const Center(
              child: FlutterLogo(
                style: FlutterLogoStyle.stacked,
                size: 128,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
