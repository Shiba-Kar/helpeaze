import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

final opacity = MovieTweenProperty<double>();
final offsetY = MovieTweenProperty<double>();

class DelayedAnimtion extends StatelessWidget {
  final Widget child;
  final int delay;
  const DelayedAnimtion({
    Key? key,
    required this.child,
    this.delay = 500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..scene(
              begin: Duration(milliseconds: delay),
              duration: const Duration(seconds: 1))
          .tween(
            'offsetY',
            Tween(begin: 20.0, end: 0.0),
          )
          .tween('opacity', Tween(begin: 0.0, end: 1.0));
    return PlayAnimationBuilder<Movie>(
      tween: tween,
      duration: tween.duration,
      builder: (context, value, child) {
        return Center(
          child: Transform.translate(
            offset: Offset(0.0, value.get('offsetY')),
            child: Opacity(opacity: value.get('opacity'), child: child),
          ),
        );
      },
      child: child,
    );
  }
}
