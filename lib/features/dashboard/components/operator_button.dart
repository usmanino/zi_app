import 'package:flutter/material.dart';

class OpratorButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  const OpratorButton({
    super.key,
    required this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.3,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkResponse(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: child,
        ),
      ),
    );
  }
}
