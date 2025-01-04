import 'package:flutter/material.dart';

class LoadingButtonTextWrapper extends StatelessWidget {
  const LoadingButtonTextWrapper(
      {super.key, required this.child, this.loading = false});

  final Widget child;
  final bool loading;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (loading) ...[
          const MiniCincularIndicator(),
          const SizedBox(width: 12),
        ],
        child,
      ],
    );
  }
}

class MiniCincularIndicator extends StatelessWidget {
  const MiniCincularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: CircularProgressIndicator(
        color: Colors.white,
        strokeWidth: 3,
      ),
    );
  }
}
