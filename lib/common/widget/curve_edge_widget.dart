import 'package:flutter/material.dart';

import 'curve_edges.dart';

class CurveEdgeWidget extends StatelessWidget {
  const CurveEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurveEdges(),
      child: child,
    );
  }
}
