import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/base/math/mat2d.dart';

class SmileyController extends FlareController {
  ActorAnimation? _blink;
  double _timer = 0.0;
  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    _timer+=elapsed;
    _blink!.apply(_timer % _blink!.duration, artboard, 0.5);
    return true;
    // TODO: implement advance
    // throw UnimplementedError();
  }

  @override
  void initialize(FlutterActorArtboard artboard) {
    _blink = artboard.getAnimation('blink');
    // TODO: implement initialize
  }

  @override
  void setViewTransform(Mat2D viewTransform) {
    // TODO: implement setViewTransform
  }

}