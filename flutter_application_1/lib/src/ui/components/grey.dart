import 'package:flutter/cupertino.dart';

import '../../constants/button_color.dart';
import '../../constants/button_size.dart';

class Grey extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  const Grey({super.key, this.onPressed, required this.child});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ButtonSize.short,
      height: ButtonSize.short,
      child: CupertinoButton(
        pressedOpacity: 1.0,
        borderRadius: BorderRadius.circular(100),
        padding: const EdgeInsets.all(16.0),
        color: ButtonColor.grey,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
