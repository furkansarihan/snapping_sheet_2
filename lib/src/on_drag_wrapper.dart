import 'package:flutter/material.dart';

class OnDragWrapper extends StatelessWidget {
  final Widget child;
  final Function(DragUpdateDetails) dragUpdate;
  final VoidCallback dragEnd;
  final Axis axis;

  OnDragWrapper(
      {Key? key,
      required this.dragEnd,
      required this.child,
      required this.axis,
      required this.dragUpdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (this.axis == Axis.horizontal) {
      return GestureDetector(
        onHorizontalDragEnd: (_) {
          this.dragEnd();
        },
        onHorizontalDragUpdate: this.dragUpdate,
        child: this.child,
      );
    }
    return GestureDetector(
      onVerticalDragEnd: (_) {
        this.dragEnd();
      },
      onVerticalDragUpdate: this.dragUpdate,
      child: this.child,
    );
  }
}
