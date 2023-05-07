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
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                color: _isHover
                    ? Colors.black.withOpacity(0.6)
                    : Colors.black.withOpacity(0.1),
              ),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: _isHover ? 1 : 0,
                child: const Center(
                  child: FlutterLogo(
                    style: FlutterLogoStyle.stacked,
                    size: 128,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
