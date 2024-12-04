

enum GestureState {
  normal,
  drag,
  scale,
  longPress,
}

extension GestureStatusExtension on GestureState {

  bool get isNormal => this == GestureState.normal;
}