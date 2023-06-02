import 'package:flutter/cupertino.dart';

import '../../constants/button_color.dart';
import '../../constants/button_size.dart';

class Orange extends StatefulWidget {
  final void Function()? onPressed;
  final Icon icon;
  final Icon activeIcon;
  final bool isClick;

  const Orange({
    super.key,
    required this.icon,
    required this.activeIcon,
    this.onPressed,
    required this.isClick,
  });
  @override
  State<Orange> createState() => _OrangeState();
}

class _OrangeState extends State<Orange> {
  void _toggle() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _backward(),
        _foreward(),
      ],
    );
  }

  Widget _foreward() {
    return AnimatedOpacity(
      opacity: (!widget.isClick) == 0 ? 1.0 : 1.0,
      duration: const Duration(microseconds: 300),
      child: SizedBox(
        width: ButtonSize.short,
        height: ButtonSize.short,
        child: CupertinoButton(
          pressedOpacity: 1.0,
          borderRadius: BorderRadius.circular(100),
          padding: const EdgeInsets.all(16.0),
          color: ButtonColor.orange,
          onPressed: widget.onPressed,
          child: widget.icon,
        ),
      ),
    );
  }

  Widget _backward() {
    return SizedBox(
      width: ButtonSize.short,
      height: ButtonSize.short,
      child: CupertinoButton(
          borderRadius: BorderRadius.circular(100),
          padding: const EdgeInsets.all(16.0),
          color: ButtonColor.white,
          onPressed: widget.onPressed,
          child: widget.activeIcon),
    );
  }
}
