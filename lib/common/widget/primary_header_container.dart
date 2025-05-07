import 'package:flutter/material.dart';
import 'package:mzayaapp/utils/constants/colors.dart';

import 'circular_container.dart';
import 'curve_edge_widget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurveEdgeWidget(
      child: Container(
        color: MazayaColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 200,
          child: Stack(
            children: [
              Positioned(
                top: -50,
                right: -150,
                child: CircularContainer(
                  backgroundColor: MazayaColors.white.withValues(
                    alpha: 0.1,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: -100,
                child: CircularContainer(
                  backgroundColor: MazayaColors.white.withValues(
                    alpha: 0.1,
                  ),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
