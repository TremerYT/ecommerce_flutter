import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  final double outerHeight;
  final double containerWidth;
  final double containerHeight;
  final Axis scrollDirection;
  final BoxShape boxShape;

  const CustomShimmer({
    super.key,
    required this.outerHeight,
    required this.containerHeight,
    required this.containerWidth,
    required this.boxShape,
    this.scrollDirection = Axis.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: outerHeight,
        child: ListView.separated(
          scrollDirection: scrollDirection,
          itemBuilder: (context, index) {
            return Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                width: containerWidth,
                height: containerHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: boxShape,
                ),
              ),
            );
          },
          separatorBuilder: (_, __) => const SizedBox(width: 12),
          itemCount: 6,
        ),
      ),
    );
  }
}
